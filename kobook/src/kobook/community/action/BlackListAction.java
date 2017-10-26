package kobook.community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.domain.BlackListModel;
import kobook.community.domain.CommunitySearch;
import kobook.community.service.BlackListService;

public class BlackListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");

		CommunitySearch search = new CommunitySearch();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%" + request.getParameter("searchKey") + "%");

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		int requestPage = Integer.parseInt(pageNum);
		
		BlackListService service = BlackListService.getInstance();
		BlackListModel blackListModel = service.listBlackService(request, requestPage);
		
		request.setAttribute("blackListModel", blackListModel);
		
		
		forward.setRedirect(false);
		forward.setPath("/community/blackList.jsp");

		return forward;
	}

}
