package kobook.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.*;
import kobook.book.service.*;

public class BookinsertAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		System.out.println("re");
		BookService service = BookService.getInstance();
		int re = service.insertBookService(request);
		System.out.println(re);
		ActionForward forward = new ActionForward();

		if(re > 0) {

			System.out.println(re);
			//forward.setPath("/booklist.jsp");
			forward.setPath("/book/listAction.do");
			forward.setRedirect(false);
		}
		
		/*else {
			System.out.println(re);
			forward.setPath("/kobook/book/bookinsertForm.jsp");
			forward.setRedirect(true);
		}*/

		return forward;
	}

}
