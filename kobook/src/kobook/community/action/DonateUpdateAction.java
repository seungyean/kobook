package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.Donate;
import kobook.community.service.DonateService;

public class DonateUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		ActionForward forward = new ActionForward();
		DonateService service = DonateService.getInstance();
		int re = service.donateUpdateService(request);

		if (re > 0) {
			forward.setPath("/community/donateList.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
