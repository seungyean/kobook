package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.BlackListService;

public class BlackDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		ActionForward forward = new ActionForward();
		int black_id = Integer.parseInt(request.getParameter("black_id"));
		
		BlackListService service = BlackListService.getInstance();
		int re = service.blackDeleteService(black_id);
		
		if (re > 0) {
			forward.setPath("/community/blackList.do");
			forward.setRedirect(false);
		}
		
		return forward;
	}

}
