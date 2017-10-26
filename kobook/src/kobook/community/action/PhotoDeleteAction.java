package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.PhotoService;

public class PhotoDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		PhotoService service = PhotoService.getInstance();
		int photo_id = Integer.parseInt(request.getParameter("photo_id"));
		
		int re = service.photoDeleteService(photo_id);
		if(re>0) {
			forward.setRedirect(true);
			forward.setPath("/kobook/community/photoReviewList.do");
		}
		
		return forward;
	}

}
