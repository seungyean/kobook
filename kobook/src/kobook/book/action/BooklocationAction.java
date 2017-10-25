package kobook.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.service.*;

public class BooklocationAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		BookSearch bookSearch = new BookSearch();
		int check = Integer.parseInt(request.getParameter("check"));
		System.out.println("성공12: " + check);
		// search.setArea(request.getParameterValues("area"));

		// search.setSafe_yn(request.getParameterValues("safe_yn"));
		// search.setLocation(request.getParameterValues("location"));

		bookSearch.setSearchKey("%" + request.getParameter("searchKey") + "%");

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int requestPage = Integer.parseInt(pageNum);

		BookService service = BookService.getInstance();

		if (check > 0) {
			System.out.println("성공: " + check);
			check = -1;
			BookListModel listModel = service.listBookService(request, requestPage);
			request.setAttribute("listModel", listModel);
		} else {
			System.out.println("실패: " + check);
			BookListModel listModel2 = service.locationBookService(request, requestPage);
			request.setAttribute("listModel2", listModel2);
			check = 1;
		}
		System.out.println("끝남: " + check);
		request.setAttribute("check", check);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/book/location.jsp");

		return forward;
	}

}
