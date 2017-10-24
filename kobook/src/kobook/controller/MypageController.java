package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.mypage.action.BuyListAction;
import kobook.mypage.action.MileageAction;
import kobook.mypage.action.PayAction;
import kobook.mypage.action.PaySuccessAction;
import kobook.mypage.action.PickAction;
import kobook.mypage.action.PickUpdateAction;
import kobook.mypage.action.SellListAction;
import kobook.mypage.action.SellUpdateAction;

public class MypageController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	���� ���� ��µǸ� �ش� controller�� �� �����Ѱ�!
		System.out.println("==========mypageCon==========");
		// /kobook/mypage/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		// mypage/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);

		
		
		// ���⼭ ������ Action���� ������.
		// .do �����ϰ� ���� �����Ų ������ 
		if (command2.equals("sellList.do")) {
			// action ��ü ����
			
			action = new SellListAction();
			// �̺κи� �����ؼ� �����ϸ� ��
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("sellUpdate.do")) {
			action = new SellUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("buyList.do")) {
			action = new BuyListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("mileage.do")) {
			action = new MileageAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("pay.do")) {
			action = new PayAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("pickList.do")) {
			action = new PickAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("pickUpdate.do")) {
			action = new PickUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("paySuccess.do")) {
			action = new PaySuccessAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		// 	forward�� ��ü�ϴ� ���� 
		if(forward != null){
			if(forward.isRedirect()){	// rediredct�� ������ �̵�
				response.sendRedirect(forward.getPath());
			} else {	//dispatcher�� ������ �̵�
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
