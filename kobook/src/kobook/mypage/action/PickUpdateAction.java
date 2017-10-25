package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PickUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("Âò¸® ¾÷µ¥ÀÌÆ® µé¾î¿È");
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("pick_id");
		int pick_id = Integer.parseInt(id);
		System.out.println(pick_id);
		service.pickUpdate(pick_id);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("pickList.do");
		
		return forward;
	}
	
	 
	
	
	

}
