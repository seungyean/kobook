package kobook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/kobook/main/main.jsp");
		
		return forward;
	}
}
