package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PickUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
//		String id = request.getParameter("pick_id");
//		int pick_id = Integer.parseInt(request.getParameter("pick_id"));
		System.out.println("µé¾î¿È");
		service.pickUpdate(2);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("pickList.do");
		
		return forward;
	}
	
	 
	
	
	

}
