package kobook.admin.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kobook.admin.dao.PersonDAO;
import kobook.admin.dao.BoardDAO;
import kobook.admin.domain.Board;
import kobook.admin.domain.ListModel;
import kobook.admin.domain.PersonModel;
import kobook.admin.domain.Search;
import kobook.admin.domain.Person;

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
	
	public PersonModel listUserService(HttpServletRequest request, int requestPage){
/*		List<User> list = pdao.listUser(search);*/
		Search search = new Search();
		HttpSession session = request.getSession();
		
		//���ο� �˻� �õ�(temp���� �Ѿ���°�)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//�˻���
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		}
		
		//�������� �۰���, �ѱ۰���, ����������, ����������, ������������, ����������
		int totalCount = pdao.countPerson(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page ����� ����
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage-1) * PAGE_SIZE;

		List<Person> list = pdao.listPerson(startRow, search);
		
		return new PersonModel(list, requestPage, totalPageCount, startPage, endPage);
		
	/*	return pdao.listUser(search);*/
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
	
	//�������� �۾��� 
	public int insertBoardService(Board board){
		board.setBoard_id(bdao.selectB_id() + 1);
		return bdao.insertBoard(board);
	}
	
	public Person selectPersonService(int person_id, boolean bool){
		
		return pdao.selectPerson(person_id);
	}
	
	//�������� �ۺ����ֱ�
	public ListModel listBoardService(HttpServletRequest request, int requestPage){
/*		List<Board> list = daoo.listBoard();*/
		Search search = new Search();
		HttpSession session = request.getSession();
		
		//���ο� �˻� �õ�(temp���� �Ѿ���°�)
		if(request.getParameter("temp") != null || request.getParameter("pageNum")==null){
			session.removeAttribute("search");
		}
		
		//�˻���
		if(request.getParameterValues("area") != null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search)session.getAttribute("search") != null){
			search = (Search)session.getAttribute("search");
		}
		
		//�������� �۰���, �ѱ۰���, ����������, ����������, ������������, ����������
		int totalCount = bdao.countBoard(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage - 1)%5;	//start page ����� ����
		int endPage = startPage + 4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage-1) * PAGE_SIZE;
		List<Board> list = bdao.listBoard(startRow, search);
		
		return new ListModel(list, requestPage, totalPageCount, startPage, endPage);
		/*return daoo.listBoard();*/
	}
	
	//�������� �ۼ���
	public Board selectBoardService(int board_id, boolean bool){
		if(bool){
			bdao.increaseHit(board_id);
		}
		return bdao.selectBoard(board_id);
	}
	
	public Board detailNotiService(int board_id){
		return bdao.detailNoti(board_id);
	}
	
	public int deleteNotiService(int board_id){
		return bdao.deleteNoti(board_id);
	}
	
	public int updateNoti(int board_id){
		return bdao.updateNoti(board_id);
	}

}