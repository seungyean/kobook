package kobook.mypage.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.book.domain.Book;
import kobook.mypage.service.MypageService;

public class SellUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		List<Book> sellList = service.sellList();
		
		for (Book book : sellList) {
			int book_id = book.getBook_id();
			String book_sell_state = request.getParameter(String.valueOf(book_id));
			System.out.println(book_sell_state);
			System.out.println(book_id);
			//파라미터 값이 있으면
			if(book_sell_state != null && !"".equals(book_sell_state)){
				Book temp = new Book();
				temp.setBook_id(book_id);
				temp.setBook_sell_state(book_sell_state);
				service.sellStateUpdate(temp);
			}
		}
		
		
		sellList = service.sellList();
		request.setAttribute("sellList", sellList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/mypage/sellList.jsp");
		
		return forward;
	}
	
	
	

}
