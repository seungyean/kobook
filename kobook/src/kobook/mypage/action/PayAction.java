package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PayAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("pay.jsp");
		
		return forward;
	}
	
	
	

}
