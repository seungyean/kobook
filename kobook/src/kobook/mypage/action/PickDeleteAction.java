package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PickDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		System.out.println("####################");
		System.out.println(request.getParameter("pick_id"));
		int pick_id = Integer.parseInt(request.getParameter("pick_id"));
		
		int re = service.pickDelete(pick_id);
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("pickList.do");
		
		return forward;
	}
	
	 
	
	
	

}
