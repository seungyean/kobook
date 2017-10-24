package kobook.mypage.action;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PickAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		List<HashMap<String, String>> pickList = service.pickList();
		
		request.setAttribute("pickList", pickList);	
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("kobook/mypage/pickList.jsp");
		
		return forward;
	}
	
	
	

}
