package kobook.book.action;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.controller.*;
import kobook.book.dao.*;
import kobook.book.mapper.*;
import kobook.book.service.*;

public class BookupdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		Book book = new Book();		
		BookService service = BookService.getInstance();
		
		/*int book_id=Integer.parseInt(request.getParameter("book"));
		System.out.println(book_id);
		System.out.println("re");
		
		
		System.out.println("kkkkkkkkkkkkkk");
		
		
		book.setBook_id(book_id);
		
		book.setBook_name(request.getParameter("name"));
		System.out.println(request.getParameter("name"));
		
		book.setBook_o_price(Integer.parseInt(request.getParameter("o_price")));
		System.out.println(Integer.parseInt(request.getParameter("o_price")));
		
		book.setBook_m_price(Integer.parseInt(request.getParameter("m_price")));
		System.out.println(Integer.parseInt(request.getParameter("m_price")));
		
		book.setBook_sell_state(request.getParameter("sell_state"));
		System.out.println(request.getParameter("sell_state"));
		
		book.setBook_status(request.getParameter("status"));
		System.out.println(request.getParameter("status"));
		
		book.setBook_edition(Integer.parseInt(request.getParameter("edition")));
		System.out.println(Integer.parseInt(request.getParameter("edition")));
		
		book.setBook_publish(request.getParameter("publish"));
		System.out.println(request.getParameter("publish"));
		
		book.setBook_safe_yn(request.getParameter("safe_yn"));
		System.out.println(request.getParameter("safe_yn"));
	
		
		book.setBook_content(request.getParameter("content"));
		System.out.println(request.getParameter("content"));
		

		String img=request.getParameter("img");
		String u_img=request.getParameter("u_img");
		if(u_img!=""){
			book.setBook_img(u_img);
		}else{
			book.setBook_img(img);
		}
		*/
		
		/*System.out.println(request.getParameter("img"));*/


	
		int re=service.updateBookService(request);
		System.out.println(re);
		
		if(re>0){		
		
			forward.setRedirect(false);  //�³���??
			forward.setPath("/kobook/book/listAction.do");
		}/*else{
			System.out.println(re);
			forward.setPath("/book/bookupdateForm.jsp");
			
		}
		*/
		return forward;
	}

}
