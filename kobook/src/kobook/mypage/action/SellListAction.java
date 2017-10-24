package kobook.mypage.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.domain.Book;
import kobook.mypage.service.MypageService;

public class SellListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		System.out.println("액션으로 들어옴");
		List<Book> sellList = service.sellList();
		request.setAttribute("sellList", sellList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/mypage/sellList.jsp");
		
		return forward;
	}
	
	
	

}
