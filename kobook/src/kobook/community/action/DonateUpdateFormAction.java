package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.Donate;
import kobook.community.service.DonateService;

public class DonateUpdateFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		int donate_id = Integer.parseInt(request.getParameter("donate_id"));
		DonateService service = DonateService.getInstance();
		Donate donate = service.donateDetailService(donate_id,false);
		request.setAttribute("donate", donate);
		forward.setRedirect(false);
		forward.setPath("/community/donate_update.jsp");
		return forward;
	}

}
