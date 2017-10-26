package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.DonateService;


public class DonateInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		DonateService service = DonateService.getInstance();		
		int re = service.insertDonateService(request);

		
		if(re > 0) {

			forward.setPath("/community/donateList.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
