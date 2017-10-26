package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.BlackList;
import kobook.community.service.BlackListService;

public class BlackUpdateFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		ActionForward forward = new ActionForward();
		int black_id = Integer.parseInt(request.getParameter("black_id"));
		BlackListService service = BlackListService.getInstance();
		BlackList black = service.blackDetailService(black_id);
		request.setAttribute("black", black);
		
		forward.setRedirect(false);
		forward.setPath("/community/blackList_update.jsp");
		return forward;
	}

}
