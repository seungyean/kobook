package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.DonateListModel;
import kobook.community.domain.CommunitySearch;
import kobook.community.service.DonateService;

public class DonateListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		CommunitySearch search = new CommunitySearch();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%" + request.getParameter("searchKey") + "%");

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		int requestPage = Integer.parseInt(pageNum);

		DonateService service = DonateService.getInstance();
		DonateListModel listModel = service.listDonateService(request, requestPage);

		request.setAttribute("listModel", listModel);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/community/donate.jsp");

		return forward;
	}

}
