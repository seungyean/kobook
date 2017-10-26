package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.DonateService;

public class DonateDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		int donate_id = Integer.parseInt(request.getParameter("donate_id"));
		System.out.println(donate_id);
		DonateService service = DonateService.getInstance();
		int re = service.donateDeleteService(donate_id);

		System.out.println(re);
		if(re > 0) {
			System.out.println(re);
			forward.setPath("/community/donateList.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
