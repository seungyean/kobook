package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;

public class SelectBoardAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		int re = Integer.parseInt(request.getParameter("board_id"));
		System.out.println("test" + re);
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/noti.jsp");
		return forward;

	}
	
}
