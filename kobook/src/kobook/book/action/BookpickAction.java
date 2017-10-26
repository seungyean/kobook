package kobook.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kobook.book.domain.*;
import kobook.action.*;
import kobook.book.service.*;



public class BookpickAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      request.setCharacterEncoding("utf-8");
    
      int book_id = Integer.parseInt(request.getParameter("book_id"));
      BookService service = BookService.getInstance();
     
      Book book = service.pickBookService(book_id);  //false媛� 留욌굹�슜???
      
      request.setAttribute("book", book);
      
      ActionForward forward=new ActionForward();
      forward.setRedirect(false);
      forward.setPath("/book/bookdetail.jsp");
      
      return forward;
   }

}