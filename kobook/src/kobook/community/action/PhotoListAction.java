package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.CommunitySearch;
import kobook.community.domain.PhotoListModel;
import kobook.community.service.PhotoService;

public class PhotoListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();

		CommunitySearch search = new CommunitySearch();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%" + request.getParameter("searchKey") + "%");

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		int requestPage = Integer.parseInt(pageNum);
		
		PhotoService service = PhotoService.getInstance();
		PhotoListModel photoListModel = service.listPhotoService(request, requestPage);
		
		request.setAttribute("photoListModel", photoListModel);
		
		forward.setRedirect(false);
		forward.setPath("/community/photoReview.jsp");
		
		return forward;
	}

}
