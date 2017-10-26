package kobook.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.book.dao.BookDAO;
import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.service.*;



public class BookpickAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      request.setCharacterEncoding("utf-8");
      ActionForward forward=new ActionForward();
    
      int book_id = Integer.parseInt(request.getParameter("book_id"));
      int person_id = Integer.parseInt(request.getParameter("person_id"));
  
      BookService service = BookService.getInstance();
      BookPick bookpick= new BookPick();
    		  bookpick.setBook_id(book_id);
    		  bookpick.setPerson_id(person_id);
    		  int re = service.insertPick(bookpick);
    		  if (re>0) {
    		      request.setAttribute("bookpick", bookpick);  
    		      forward.setRedirect(false);
    		      forward.setPath("/book/detailAction.do");    			  
    		  }
      
      return forward;
   }

}