package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.service.PhotoService;

public class PhotoInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		PhotoService service = PhotoService.getInstance();
		int re = service.insertPhotoService(request);
		
		if(re > 0) {
			System.out.println("success");
			forward.setPath("/community/photoReviewList.do");
			forward.setRedirect(false);
		}else {
			System.out.println("fail!");
		}

		return forward;
	}

}
