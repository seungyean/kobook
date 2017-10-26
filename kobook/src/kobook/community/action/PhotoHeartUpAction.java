package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.Photo;
import kobook.community.service.PhotoService;

public class PhotoHeartUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		PhotoService service = PhotoService.getInstance();
		int photo_id = Integer.parseInt(request.getParameter("photo_id"));
		Photo photo = service.photoDetailService(photo_id, false);
		int re = service.photoHeartUpService(photo_id);
		
		if (re>0) {
			request.setAttribute("photo", photo);
			forward.setRedirect(false);
			forward.setPath("/community/photoReview_detail.jsp");
		}
		
		return forward;
	}

}
