package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.BlackListService;

public class BlackUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		ActionForward forward = new ActionForward();
		BlackListService service = BlackListService.getInstance();
		int re = service.blackUpdateService(request);
		
		if (re > 0) {
			forward.setPath("/community/blackList.do");
			forward.setRedirect(false);
		}
		
		return forward;
	}

}
