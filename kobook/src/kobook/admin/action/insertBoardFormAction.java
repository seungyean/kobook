package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.ListModel;

public class insertBoardFormAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		request.setCharacterEncoding("utf-8");
		ListModel listModel = (ListModel)request.getAttribute("listModel");
		request.setAttribute("listModel", listModel);
		
		
		ActionForward forward =  new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/noti_insert.jsp");
		
		return forward;
}
}
