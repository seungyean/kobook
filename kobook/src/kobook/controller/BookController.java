package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.action.BookdetailAction;
import kobook.action.BookinsertAction;
import kobook.action.BookinsertFormAction;
import kobook.action.BooklistAction;
import kobook.action.BooklocationAction;
import kobook.action.BookupdateAction;
import kobook.action.BookupdateFormAction;

public class BookController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	���� ���� ��µǸ� �ش� controller�� �� �����Ѱ�!
		System.out.println("==========bookController==========");
		// /kobook/book/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		// book/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);

		
		// 占쏙옙占썩서 占쏙옙占쏙옙占쏙옙 Action占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙.
				// 占쌍쇽옙 풀占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占신� 占쏙옙占쏙옙占쏙옙 
				if (command2.equals("insertform.do")) {
					action = new BookinsertFormAction(); // �쟾臾몄쑝濡� �떞�떦�븯�뒗 insertFormAction�뿉�꽌 �젙�쓽
					try {
						forward = action.execute(request, response);

					} catch (Exception e) {
						e.printStackTrace();
					}

				} else if (command2.equals("insertAction.do")) {

					
					action = new BookinsertAction(); // �쟾臾몄쑝濡� �떞�떦�븯�뒗 insertFormAction�뿉�꽌 �젙�쓽
				
					try {
						forward = action.execute(request, response);
						
					} catch (Exception e) {
						e.printStackTrace();
					}
				} else if (command2.equals("listAction.do")) {
					action = new BooklistAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} else if (command2.equals("locationAction.do")) {
					action = new BooklocationAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} else if (command2.equals("detailAction.do")) {
					action = new BookdetailAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}  else if (command2.equals("updateForm.do")) {
					action = new BookupdateFormAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				} else if (command2.equals("updateAction.do")) {
					action = new BookupdateAction();
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
