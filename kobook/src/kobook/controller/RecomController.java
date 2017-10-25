package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.recom.action.AlarmListAction;
import kobook.recom.action.LoginAction;
import kobook.recom.action.RecomDeleteAction;
import kobook.recom.action.RecommendAction;

public class RecomController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	���� ���� ��µǸ� �ش� controller�� �� �����Ѱ�!
		System.out.println("==========bookCon==========");
		// /kobook/recom/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		//	recom/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);


		
		// ���⼭ ������ Action���� ������.
		// .do �����ϰ� ���� �����Ų ������ 
		
		if (command2.equals("recommendAction.do")) {
			
			// action ��ü ����
			action = new RecommendAction();
			// �̺κи� �����ؼ� �����ϸ� ��
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command2.equals("recomDeleteAction.do")){
			
			action = new RecomDeleteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command2.equals("alarmListAction.do")){
			
			action = new AlarmListAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command2.equals("loginAction.do")){
			
			action = new LoginAction();
			
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
