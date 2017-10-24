package kobook.book.action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.controller.*;
import kobook.book.dao.*;
import kobook.book.mapper.*;
import kobook.book.service.*;

public class BooklistAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		Search search = new Search();
		search.setArea(request.getParameterValues("area"));				
		search.setSafe_yn(request.getParameterValues("safe_yn"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");

		System.out.println(search.toString());
		
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		int requestPage = Integer.parseInt(pageNum);
	
		
		BookService service=BookService.getInstance();
		ListModel listModel = service.listBookService(request, requestPage);
		//ListModel listModel2 = service.locationBookService(request, requestPage);
		
		request.setAttribute("listModel", listModel);
		//request.setAttribute("listModel2", listModel2);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/kobook/book/booklist.jsp");
		
		return forward;
	}

}
