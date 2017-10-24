package kobook.book.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.controller.*;
import kobook.book.dao.*;
import kobook.book.mapper.*;
import kobook.book.service.*;

public class BookupdateFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		BookService service = BookService.getInstance();
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		
		Book book=service.selectBookService(book_id, false);
		System.out.println(book.getBook_id());
		
		request.setAttribute("book", book);
		
		forward.setRedirect(false);
		forward.setPath("/kobook/book/bookupdateForm.jsp");
		
		return forward;
	}

}
