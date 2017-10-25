package kobook.mypage.action;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PickAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("Âò¸®  µé¾î¿È");
		
		HttpSession session = request.getSession();
		int person_id = Integer.parseInt((String)session.getAttribute("person_id"));
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		List<HashMap<String, String>> pickList = service.pickList(person_id);
		int sum = service.sumMileage(person_id);
		
		request.setAttribute("pickList", pickList);	
		request.setAttribute("sumMileage", sum);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("pickList.jsp");
		
		return forward;
	}
	
	
	

}
