package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.BlackListService;

public class BlackInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BlackListService service = BlackListService.getInstance();
		
		int re = service.insertBlackListService(request);

		System.out.println(re);
		if(re > 0) {
			System.out.println(re);

		}
		forward.setPath("/community/blackList.do");
		forward.setRedirect(false);
		return forward;
	}

}
