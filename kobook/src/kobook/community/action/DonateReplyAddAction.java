package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.DonateReply;
import kobook.community.service.DonateService;

public class DonateReplyAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		DonateReply reply = new DonateReply();
		request.setCharacterEncoding("utf-8");
		int rDonate_id = Integer.parseInt(request.getParameter("rDonate_id"));
		int rperson_id = Integer.parseInt((String)(request.getSession().getAttribute("person_id")));
		DonateService service = DonateService.getInstance();
		reply.setDonate_id(rDonate_id);
		reply.setPerson_id(rperson_id);
		reply.setReply_content(request.getParameter("reply_content"));
		int re = service.insertDonateReplyService(reply);

		System.out.println(re);
		if(re > 0) {
			System.out.println(re);
			forward.setPath("/community/donateList.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
