package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.domain.PaySuccess;
import kobook.mypage.service.MypageService;

public class PaySuccessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MypageService service = MypageService.getInstance();
		request.setCharacterEncoding("utf-8");
		System.out.println("pay success µé¾î¿È");
		String id = request.getParameter("pick_id");
		int pick_id = Integer.parseInt(id);
		String pay_amount = request.getParameter("pay_amount");
		
		System.out.println(pick_id);
		System.out.println(pay_amount);

		// pick update
//		service.pickUpdate(pick_id);
		
		// pay insert
		
		PaySuccess paySuccess = new PaySuccess();
		paySuccess.setPay_id(Integer.parseInt(request.getParameter("pay_id")));
		paySuccess.setPay_amount(Integer.parseInt(request.getParameter("pay_amount")));
		paySuccess.setPick_id(Integer.parseInt(request.getParameter("pick_id")));
		
		service.insertPay(paySuccess);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("paySuccess.jsp");
		
		return forward;
	}

}
