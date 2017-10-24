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
		
		//search.setArea(request.getParameterValues("area"));
		
		
		//search.setSafe_yn(request.getParameterValues("safe_yn"));
		//search.setLocation(request.getParameterValues("location"));
		
		bookSearch.setSearchKey("%"+request.getParameter("searchKey")+"%");

		
		
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		int requestPage = Integer.parseInt(pageNum);
	
		
		BookService service=BookService.getInstance();
		//ListModel listModel = service.listBookService(request, requestPage);
		BookListModel listModel2 = service.locationBookService(request, requestPage);
		
		//request.setAttribute("listModel", listModel);
		request.setAttribute("listModel2", listModel2);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/kobook/book/location.jsp");
		
		return forward;
	}

}
