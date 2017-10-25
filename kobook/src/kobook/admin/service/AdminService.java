package kobook.admin.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kobook.admin.dao.BoardDAO;
import kobook.admin.dao.PersonDAO;
import kobook.admin.domain.Board;
import kobook.admin.domain.ListModel;
import kobook.admin.domain.Search;
import kobook.admin.domain.Person;
import kobook.admin.domain.PersonModel;

public class AdminService {

	private static AdminService service = new AdminService();
	private static PersonDAO pdao;
	private static BoardDAO bdao;
	private static final int PAGE_SIZE = 5;
	
	public static AdminService getInstance(){
		pdao = PersonDAO.getInstance();
		bdao = BoardDAO.getInstance();
		return service;
	}
	
	public PersonModel listPersonService(HttpServletRequest request, int requestPage){

		Search search = new Search();
		HttpSession session = request.getSession();
		
		//새로운 검색 시도(temp값이 넘어오는것)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//검색시
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
			
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		} 
		
		//페이지당 글갯수, 총글갯수, 총페이지수, 시작페이지, 마지막페이지, 현재페이지
		int totalCount = pdao.countPerson(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page 만드는 공식
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage-1) * PAGE_SIZE;

		List<Person> list = pdao.listPerson(startRow, search);
		return new PersonModel (list, requestPage, totalPageCount, startPage, endPage);
		
	/*	return udao.listUser(search);*/
	}

	public Person detailPersonService(int person_id){
		return pdao.detailPerson(person_id);
	}
	
	public int deletePersonService(int person_id){
		return pdao.deletePerson(person_id);
	}
	
	public int gradeupdateService(Person person){
		return pdao.gradeupdatePerson(person);
	}
	
	public int kindService(Person person){
		return pdao.kindupdatePerson(person);
	}
	
	public List<Person> blackPersonService(){
		return pdao.blackPerson();
	}
	
//--------------------공지사항-------------------------	
	
	//공지사항 글쓰기 
	public int insertBoardService(Board board){
		board.setBoard_id(bdao.selectB_id() + 1);
		return bdao.insertBoard(board);
	}
	
	public Person selectPersonService(int person_id, boolean bool){
		return pdao.selectPerson(person_id);
	}
	
	//공지사항 글보여주기
	public ListModel listBoardService(HttpServletRequest request, int requestPage){

		Search search = new Search();
		HttpSession session = request.getSession();
		
		//새로운 검색 시도(temp값이 넘어오는것)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//검색시
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		}
		
		//페이지당 글갯수, 총글갯수, 총페이지수, 시작페이지, 마지막페이지, 현재페이지
		int totalCount = bdao.countBoard(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page 만드는 공식
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage-1) * PAGE_SIZE;
		List<Board> list = bdao.listBoard(startRow, search);
		
		return new ListModel (list, requestPage, totalPageCount, startPage, endPage);
		/*return daoo.listBoard();*/
	}
	
	//공지사항 글선택
	public Board selectBoardService(int board_id, boolean bool){
		if(bool){
			bdao.increaseHit(board_id);
		}
		return bdao.selectBoard(board_id);
	}
	
	//공지사항 상세보기
	public Board detailNotiService(int board_id){
		bdao.increaseHit(board_id);
		return bdao.detailNoti(board_id);
	}
	
	//공지사항 글삭제
	public int deleteNotiService(int board_id){
		return bdao.deleteNoti(board_id);
	}
	
	//공지사항 수정
	public int updateNoti(int board_id){
		return bdao.updateNoti(board_id);
	}
	
	
}	