package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.DonateService;

public class DonateReplyDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		int reply_id = Integer.parseInt(request.getParameter("reply_id"));
		DonateService service = DonateService.getInstance();
		int re = service.donateReplyDeleteService(reply_id);

		if(re > 0) {
			forward.setPath("/community/donateList.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
