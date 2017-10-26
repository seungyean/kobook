package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.ListModel;

public class insertBoardFormAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		request.setCharacterEncoding("utf-8");
		ListModel listModel = (ListModel)request.getAttribute("listModel");
		request.setAttribute("listModel", listModel);
		
		HttpSession session = request.getSession();
		String person_id = (String)session.getAttribute("person_id");
		
		
		ActionForward forward =  new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/admin/noti_insert.jsp");
		
		return forward;
}
}
