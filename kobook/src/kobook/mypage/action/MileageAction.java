package kobook.mypage.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class MileageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		int person_id = Integer.parseInt((String)session.getAttribute("person_id"));
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		System.out.println("마일리지 액션 들어옴");
		List<HashMap<String, String>> mileageList = service.mileageList(person_id);
		
		System.out.println(mileageList);
		request.setAttribute("mileageList", mileageList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("mileage.jsp");
		
		return forward;
	}

}
