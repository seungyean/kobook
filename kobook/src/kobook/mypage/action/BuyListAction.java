package kobook.mypage.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.domain.Book;
import kobook.mypage.service.MypageService;

public class BuyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		System.out.println("¤§¤©¾î¿È");
		List<HashMap<String, String>> buyList = service.buyList();
		
		System.out.println(buyList);
		request.setAttribute("buyList", buyList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/mypage/buyList.jsp");
		
		return forward;
	}
	
	
	

}
