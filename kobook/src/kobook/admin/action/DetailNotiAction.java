package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Board;
import kobook.admin.service.AdminService;

public class DetailNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		AdminService service = AdminService.getInstance();

		
		Board board = service.detailNotiService(Integer.parseInt(request.getParameter("board_id")));
		request.setAttribute("board", board);
		
		String person_id = (String)request.getSession().getAttribute("person_id");
		
		
		ActionForward forward = new ActionForward();
		if(person_id.equals("admin")){
			forward.setRedirect(false);
			forward.setPath("/admin/detailNoti.jsp");
		} else {
			forward.setRedirect(false);
			forward.setPath("/admin/detailNoti.jsp");
		}
		
/*		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/admin/detailNoti.jsp");*/
		return forward;

	}
	
}
