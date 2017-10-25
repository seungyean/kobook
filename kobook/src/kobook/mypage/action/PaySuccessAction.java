package kobook.mypage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Person;
import kobook.mypage.dao.MypageDAO;
import kobook.mypage.domain.Mileage;
import kobook.mypage.domain.PaySuccess;
import kobook.mypage.service.MypageService;

public class PaySuccessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MypageService service = MypageService.getInstance();
		MypageDAO dao = MypageDAO.getInstance();
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		System.out.println("pay success µé¾î¿È");
		String id = request.getParameter("pick_id");
		int pick_id = Integer.parseInt(id);
		String pay_amount = request.getParameter("pay_amount");
		int person_id= Integer.parseInt((String)session.getAttribute("person_id"));
		
		System.out.println(pick_id);
		System.out.println(pay_amount);

		// pick update
		service.pickUpdate(pick_id);
		
		// pay insert
		PaySuccess paySuccess = new PaySuccess();
		paySuccess.setPay_amount(Integer.parseInt(request.getParameter("pay_amount")));
		paySuccess.setPick_id(Integer.parseInt(request.getParameter("pick_id")));
		paySuccess.setPay_id(dao.selectPay_id() + 1);
		
		
		service.insertPay(paySuccess);
		
		// mileage insert
		int mileage_point = (int)(Integer.parseInt(request.getParameter("pay_amount")) * 0.01);
		
		Mileage mileage = new Mileage();
		mileage.setMileage_id(dao.selectM_id() +1);
		mileage.setMileage_kind('P');
		mileage.setMileage_point(mileage_point);
		mileage.setPay_id(dao.selectPay_id());
		mileage.setPerson_id(person_id);
		
		service.insertMileage(mileage);
		
		// person update
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("paySuccess.jsp");
		
		return forward;
	}

}
