package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.message.action.SendMessageAction;
import kobook.message.action.SendReadyAction;

public class MessageController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	���� ���� ��µǸ� �ش� controller�� �� �����Ѱ�!
		System.out.println("==========msgCon==========");
		// /kobook/message/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		// message/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);

		
		
		// ���⼭ ������ Action���� ������.
		// .do �����ϰ� ���� �����Ų ������ 
		if (command2.equals("sendReady.do")) {
			
			// action ��ü ����
			action = new SendReadyAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("sendOk.do")) {
			
				action = new SendMessageAction();
			
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
