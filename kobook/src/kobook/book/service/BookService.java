package kobook.book.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kobook.book.dao.BookDAO;
import kobook.book.domain.Book;
import kobook.book.domain.BookListModel;
import kobook.book.domain.BookSearch;
import kobook.common.domain.ImageUtil;

public class BookService {
	private static BookService service = new BookService();
	   private static BookDAO dao;
	   private static final int PAGE_SIZE = 9;

	   
	   public static BookService getInstance() {
	      dao = BookDAO.getInstance();      
	      return service;
	   }
	   
	   public int insertBookService(HttpServletRequest request) throws Exception{
	      Book book = new Book();
	      
	      //�뙆�씪 �뾽濡쒕뱶(寃쎈줈�뙆�븙, �겕湲�, �씤肄붾뵫���엯, �뙆�씪�씠由꾩쨷泥⑸릺�뿀�쓣�븣 �젙梨�(?))
	      String uploadPath = request.getRealPath("upload");//寃쎈줈
	      int size = 30 * 1024 * 1024; //20Mb
	      
	      MultipartRequest multi = 
	            new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
	      
	      book.setBook_name(multi.getParameter("name"));
	      
	      int o_price=Integer.parseInt(multi.getParameter("o_price"));
	      book.setBook_o_price(o_price);
	      int m_price=Integer.parseInt(multi.getParameter("m_price"));
	      book.setBook_m_price(m_price);
	      
	      book.setBook_kind(multi.getParameter("kind"));
	      
	      int edition=Integer.parseInt(multi.getParameter("edition"));
	      book.setBook_edition(edition);
	      
	      book.setBook_publish(multi.getParameter("publish"));
	      book.setBook_hash(multi.getParameter("hash"));
	      
	      book.setBook_safe_yn(multi.getParameter(("safe_yn")));
	      System.out.println(book.getBook_safe_yn().toString());
	      
	   /*   String sell_state=multi.getParameter("sell_state")==null? " ":
	         request.getParameter("I");*/
	      
	      book.setBook_sell_state(multi.getParameter("sell_state"));

	      System.out.println(book.getBook_sell_state().toString());
	      book.setBook_status(multi.getParameter("status"));

	      System.out.println(book.getBook_status().toString());
	      book.setBook_content(multi.getParameter("content"));
	   
	      

	      //�뙆�씪 �뾽濡쒕뱶�떆
	      if(multi.getFilesystemName("img") != null) {
	         String b_fname = multi.getFilesystemName("img");
	         book.setBook_img(b_fname);
	         
	         //�뜽�꽕�씪 �씠誘몄�(jpf,gif,png etc...) aaa.gif = aaa_small.gif
	         String pattern = b_fname.substring(b_fname.lastIndexOf(".")+1);//�솗�옣�옄 戮묒븘�궡湲�
	         String headName = b_fname.substring(0, b_fname.lastIndexOf("."));//�뙆�씪紐� 戮묒븘�궡湲�
	         
	         //�썝蹂명뙆�씪媛앹껜�깮�꽦
	         String imagePath = uploadPath + "\\" + b_fname; //寃쎈줈�꽕�젙
	         File src = new File(imagePath);
	         
	         //�뜽�꽕�씪�씠誘몄� 媛앹껜
	         String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern;  //寃쎈줈�꽕�젙
	         File dest = new File(thumImagePath);
	         
	         if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
	            ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
	         }
	      }else {
	         book.setBook_img("");
	      }
	      book.setBook_id(dao.selectBook_id()+1);
	      
	      return dao.insertBook(book);
	   }

	   
	   
	   
	   
	   public BookListModel listBookService(HttpServletRequest request, int requestPage){
	      
	      BookSearch search = new BookSearch();
	      HttpSession session = request.getSession();
	      
	      //�깉濡쒖슫 寃��깋�떆�룄
	      if(request.getParameter("temp") != null || request.getParameter("pageNum") == null) {
	         session.removeAttribute("search");
	      }
	      //寃��깋 submit�떆
	      if(request.getParameterValues("area") != null) { /*&& request.getParameterValues("safe_yn")!=null*/
	         if(request.getParameterValues("safe_yn")!=null){
	            search.setSafe_yn(request.getParameterValues("safe_yn"));
	         }
	         search.setArea(request.getParameterValues("area"));
	         search.setSearchKey("%"+request.getParameter("searchKey")+"%");
	         session.setAttribute("search", search);
	      }

	      
	      //寃��깋�썑 �럹�씠吏� �럹�씠吏� �겢由�(�럹�씠吏� �씠�룞)
	      else if (session.getAttribute("search") != null) {
	         search = (BookSearch) session.getAttribute("search");
	      }
	      
	      
	      //�럹�씠吏��떦 湲�媛��닔, 珥앷�媛��닔, 珥앺럹�씠吏��닔, �떆�옉�럹�씠吏�, 留덉�留됲럹�씠吏�, �쁽�옱�럹�씠吏�
	      int totalCount = dao.countBook(search);
	      int totalPageCount = totalCount/PAGE_SIZE;
	      if(totalCount%PAGE_SIZE >0){
	         totalPageCount++;
	      }
	      
	      int startPage = requestPage- (requestPage - 1)%5;
	      int endPage = startPage + 4;
	      if(endPage > totalPageCount) {
	         endPage = totalPageCount;
	      }
	      
	      int startRow = (requestPage -1) * PAGE_SIZE;
	      List<Book> list = dao.listBook(startRow, search);
	      
	      return new BookListModel(list, requestPage, totalPageCount, startPage, endPage);
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   public BookListModel locationBookService(HttpServletRequest request, int requestPage){
	      
	      BookSearch search = new BookSearch();
	      HttpSession session = request.getSession();
	      
	      //�깉濡쒖슫 寃��깋�떆�룄
	      if(request.getParameter("temp") != null || request.getParameter("pageNum") == null) {
	         session.removeAttribute("search");
	      }
	      //寃��깋 submit�떆
	      if(request.getParameter("searchKey")!=null){
	    	  if(request.getParameter("sort")!=null){
	         //search.setArea(request.getParameterValues("area"));
	    	 search.setSort(request.getParameter("sort"));
	         search.setSearchKey("%"+request.getParameter("searchKey")+"%");
	         session.setAttribute("search", search);
	      }else{
	    	  search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		         session.setAttribute("search", search);
	      }
	      }
	      
	      //寃��깋�썑 �럹�씠吏� �럹�씠吏� �겢由�(�럹�씠吏� �씠�룞)
	      else if (session.getAttribute("search") != null) {
	         search = (BookSearch) session.getAttribute("search");
	      }
	      
	      
	      //�럹�씠吏��떦 湲�媛��닔, 珥앷�媛��닔, 珥앺럹�씠吏��닔, �떆�옉�럹�씠吏�, 留덉�留됲럹�씠吏�, �쁽�옱�럹�씠吏�
	    
	      
	      int totalCount = dao.countlocationBook(search);
	      int totalPageCount = totalCount/PAGE_SIZE;
	      if(totalCount%PAGE_SIZE >0){
	         totalPageCount++;
	      }
	      
	      int startPage = requestPage- (requestPage - 1)%5;
	      int endPage = startPage + 4;
	      if(endPage > totalPageCount) {
	         endPage = totalPageCount;
	      }
	      
	      int startRow = (requestPage -1) * PAGE_SIZE;
	      List<Book> list = dao.locationBook(startRow, search);
	      
	      return new BookListModel(list, requestPage, totalPageCount, startPage, endPage);
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   public Book selectBookService(int b_id, boolean bool) {
	      if(bool) {
	         //dao.updateHit(b_id);
	      }
	      return dao.selectBook(b_id);
	      
	   }
	   
	   
	   public int updateBookService(HttpServletRequest request)throws Exception{
	      
	      //�뙆�씪 �뾽濡쒕뱶(寃쎈줈�뙆�븙, �겕湲�, �씤肄붾뵫���엯, �뙆�씪�씠由꾩쨷泥⑸릺�뿀�쓣�븣 �젙梨�(?))
	            String uploadPath = request.getRealPath("upload");//寃쎈줈
	            int size = 30 * 1024 * 1024; //20Mb
	            
	            MultipartRequest multi = 
	                  new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
	            Book book=new Book();
	            BookService service = BookService.getInstance();
	            
	            int book_id=Integer.parseInt(multi.getParameter("book"));
	            System.out.println(book_id);
	            System.out.println("re");
	            
	            
	            System.out.println("kkkkkkkkkkkkkk");
	            
	            
	            book.setBook_id(book_id);
	            
	            book.setBook_name(multi.getParameter("name"));
	            System.out.println(multi.getParameter("name"));
	            
	            book.setBook_o_price(Integer.parseInt(multi.getParameter("o_price")));
	            System.out.println(Integer.parseInt(multi.getParameter("o_price")));
	            
	            book.setBook_m_price(Integer.parseInt(multi.getParameter("m_price")));
	            System.out.println(Integer.parseInt(multi.getParameter("m_price")));
	            
	            book.setBook_sell_state(multi.getParameter("sell_state"));
	            System.out.println(multi.getParameter("sell_state"));
	            
	            book.setBook_status(multi.getParameter("status"));
	            System.out.println(multi.getParameter("status"));
	            
	            book.setBook_edition(Integer.parseInt(multi.getParameter("edition")));
	            System.out.println(Integer.parseInt(multi.getParameter("edition")));
	            
	            book.setBook_publish(multi.getParameter("publish"));
	            System.out.println(multi.getParameter("publish"));
	            
	            book.setBook_safe_yn(multi.getParameter("safe_yn"));
	            System.out.println(multi.getParameter("safe_yn"));
	         
	            
	            book.setBook_content(multi.getParameter("content"));
	            System.out.println(multi.getParameter("content"));
	            

	            String img=multi.getParameter("img");

	            //�뙆�씪 �뾽濡쒕뱶�떆
	            if(multi.getFilesystemName("u_img") != null) {
	               String b_fname = multi.getFilesystemName("u_img");
	               if(b_fname!=null){
	                  book.setBook_img(b_fname);
	               }else{
	                  book.setBook_img(img);
	               }
	               
	               
	               //�뜽�꽕�씪 �씠誘몄�(jpf,gif,png etc...) aaa.gif = aaa_small.gif
	               String pattern = b_fname.substring(b_fname.lastIndexOf(".")+1);//�솗�옣�옄 戮묒븘�궡湲�
	               String headName = b_fname.substring(0, b_fname.lastIndexOf("."));//�뙆�씪紐� 戮묒븘�궡湲�
	               
	               //�썝蹂명뙆�씪媛앹껜�깮�꽦
	               String imagePath = uploadPath + "\\" + b_fname; //寃쎈줈�꽕�젙
	               File src = new File(imagePath);
	               
	               //�뜽�꽕�씪�씠誘몄� 媛앹껜
	               String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern;  //寃쎈줈�꽕�젙
	               File dest = new File(thumImagePath);
	               
	               if(pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")){
	                  ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
	               }
	            }else {
	               book.setBook_img("");
	            }
	      int re = dao.updateBook(book);
	      return re;
	   }
	   

}
