package kobook.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.service.*;


public class BookinsertFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("b_id");
		int b_id = 0;
		
		if(id != null) {
			b_id = Integer.parseInt(id);
		}
		
		BookService service = BookService.getInstance();
		Book book = service.selectBookService(b_id, false);
		
	
		
		request.setAttribute("book", book);
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/book/bookinsertForm.jsp");
		
		return forward;
	}

}
