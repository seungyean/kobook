package kobook.mypage.action;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class BuyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		int person_id = Integer.parseInt((String)session.getAttribute("person_id"));
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		System.out.println("¤§¤©¾î¿È");
		List<HashMap<String, String>> buyList = service.buyList(person_id);
		
		System.out.println(buyList);
		request.setAttribute("buyList", buyList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("buyList.jsp");
		
		return forward;
	}
	
	
	

}
