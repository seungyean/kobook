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
	
	public int searchP_idService(String person_email){
		return pdao.searchP_id(person_email);
	}
	
	public PersonModel listPersonService(HttpServletRequest request, int requestPage){

		Search search = new Search();
		HttpSession session = request.getSession();
		
		//�깉濡쒖슫 寃��깋 �떆�룄(temp媛믪씠 �꽆�뼱�삤�뒗寃�)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//寃��깋�떆
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
			
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		} 
		
		//�럹�씠吏��떦 湲�媛��닔, 珥앷�媛��닔, 珥앺럹�씠吏��닔, �떆�옉�럹�씠吏�, 留덉�留됲럹�씠吏�, �쁽�옱�럹�씠吏�
		int totalCount = pdao.countPerson(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page 留뚮뱶�뒗 怨듭떇
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
	
//--------------------怨듭��궗�빆-------------------------	
	
	//怨듭��궗�빆 湲��벐湲� 
	public int insertBoardService(Board board){
		board.setBoard_id(bdao.selectB_id() + 1);
		return bdao.insertBoard(board);
	}
	
	public Person selectPersonService(int person_id, boolean bool){
		return pdao.selectPerson(person_id);
	}
	
	//怨듭��궗�빆 湲�蹂댁뿬二쇨린
	public ListModel listBoardService(HttpServletRequest request, int requestPage){

		Search search = new Search();
		HttpSession session = request.getSession();
		
		//�깉濡쒖슫 寃��깋 �떆�룄(temp媛믪씠 �꽆�뼱�삤�뒗寃�)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//寃��깋�떆
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		}
		
		//�럹�씠吏��떦 湲�媛��닔, 珥앷�媛��닔, 珥앺럹�씠吏��닔, �떆�옉�럹�씠吏�, 留덉�留됲럹�씠吏�, �쁽�옱�럹�씠吏�
		int totalCount = bdao.countBoard(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page 留뚮뱶�뒗 怨듭떇
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage-1) * PAGE_SIZE;
		List<Board> list = bdao.listBoard(startRow, search);
		
		return new ListModel (list, requestPage, totalPageCount, startPage, endPage);
		/*return daoo.listBoard();*/
	}
	
	//怨듭��궗�빆 湲��꽑�깮
	public Board selectBoardService(int board_id, boolean bool){
		if(bool){
			bdao.increaseHit(board_id);
		}
		return bdao.selectBoard(board_id);
	}
	
	//怨듭��궗�빆 �긽�꽭蹂닿린
	public Board detailNotiService(int board_id){
		bdao.increaseHit(board_id);
		return bdao.detailNoti(board_id);
	}
	
	//怨듭��궗�빆 湲��궘�젣
	public int deleteNotiService(int board_id){
		return bdao.deleteNoti(board_id);
	}
	
	//怨듭��궗�빆 �닔�젙
	public int updateNoti(int board_id){
		return bdao.updateNoti(board_id);
	}
	
	
}	