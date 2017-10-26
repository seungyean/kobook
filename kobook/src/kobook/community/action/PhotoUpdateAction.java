package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.PhotoService;

public class PhotoUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		PhotoService service = PhotoService.getInstance();
		int re = service.photoUpdateService(request);
		
		if(re>0) {
			forward.setRedirect(false);
			forward.setPath("/community/photoReviewList.do");
		}
		
		return forward;
	}

}
