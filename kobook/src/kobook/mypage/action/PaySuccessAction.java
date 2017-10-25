package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.service.MypageService;

public class PaySuccessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		String pick_id = request.getParameter("pick_id");
		String pay_amount = request.getParameter("pay_amount");
		System.out.println(pick_id);
		System.out.println(pay_amount);

		// pick update
		
		// pay insert
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("paySuccess.jsp");
		
		return forward;
	}

}
