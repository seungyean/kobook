package kobook.community.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.Donate;
import kobook.community.domain.DonateReply;
import kobook.community.service.DonateService;

public class DonateReplyUpdateFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		int donate_id = Integer.parseInt(request.getParameter("donate_id"));
		int reply_id = Integer.parseInt(request.getParameter("reply_id"));
		DonateService service = DonateService.getInstance();
		Donate donate = service.donateDetailService(donate_id, false);
		List<DonateReply> replyList = service.listDonateReplyService(donate_id);
		request.setAttribute("donate", donate);
		request.setAttribute("replyList", replyList);
		request.setAttribute("reply_id", reply_id);
		forward.setRedirect(false);
		forward.setPath("/community/donate_reply_update.jsp");

		return forward;
	}

}
