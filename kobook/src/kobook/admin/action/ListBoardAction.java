package kobook.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Board;
import kobook.admin.domain.ListModel;
import kobook.admin.domain.Person;
import kobook.admin.service.AdminService;

public class ListBoardAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		AdminService service = AdminService.getInstance();
		
		Board board = new Board();

		// 파라미터 호출

		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum ="1";
		}
		
		int requestPage = Integer.parseInt(pageNum);
		//현재페이지수

		ListModel listModel = service.listBoardService(request, requestPage);
		
		HttpSession session = request.getSession();
		//String person_id = (String)session.getAttribute("person_id");
		int person_id = Integer.parseInt((String)session.getAttribute("person_id"));
		

		
		request.setAttribute("listModel", listModel);
		
		ActionForward forward = new ActionForward();

		
		if(person_id == 0){
			forward.setRedirect(false);
			forward.setPath("/admin/notiAdmin.jsp");
		} else {
			forward.setRedirect(false);
			forward.setPath("/admin/noti.jsp");
		}
		
		return forward;
		
	}
	
}
