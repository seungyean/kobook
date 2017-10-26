package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.Photo;
import kobook.community.service.PhotoService;

public class PhotoDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		int photo_id = Integer.parseInt(request.getParameter("photo_id"));
		
		PhotoService service = PhotoService.getInstance();
		Photo photo = service.photoDetailService(photo_id, true);
		
		request.setAttribute("photo", photo);

		forward.setRedirect(false);
		forward.setPath("/community/photoReview_detail.jsp");

		return forward;
	}

}
