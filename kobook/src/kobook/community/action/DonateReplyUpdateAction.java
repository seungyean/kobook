package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.DonateReply;
import kobook.community.service.DonateService;

public class DonateReplyUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		DonateService service = DonateService.getInstance();
		ActionForward forward = new ActionForward();
		DonateReply reply = new DonateReply();

		int reply_id = Integer.parseInt(request.getParameter("reply_id"));
		int donate_id = Integer.parseInt(request.getParameter("donate_id"));

		reply.setReply_id(reply_id);
		reply.setDonate_id(donate_id);
		reply.setReply_content(request.getParameter("reply_content"));

		int re = service.updateDonateReplyService(reply);

		if (re > 0) {
			forward.setRedirect(false);
			forward.setPath("/community/donateDetail.do");
		}
		return forward;
	}

}
