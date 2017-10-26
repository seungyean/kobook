package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.book.action.BookdetailAction;
import kobook.book.action.BookinsertAction;
import kobook.book.action.BookinsertFormAction;
import kobook.book.action.BooklistAction;
import kobook.book.action.BooklocationAction;
import kobook.book.action.BookpickAction;
import kobook.book.action.BookupdateAction;
import kobook.book.action.BookupdateFormAction;

public class BookController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	밑의 줄이 출력되면 해당 controller로 잘 진입한것!
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

		

		// 여기서 각각의 Action으로 보낸다.
		// 주석 풀고 각자 연결시킨 곳으로 
		
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
	         
	      }  else if (command2.equals("pickAction.do")) {
	    	  
		         action = new BookpickAction();
		         try {
		            forward = action.execute(request, response);
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
		         
		      } 

		
		
		
		// 	forward를 해체하는 과정 
		if(forward != null){
			if(forward.isRedirect()){	// rediredct로 페이지 이동
				response.sendRedirect(forward.getPath());
			} else {	//dispatcher로 페이지 이동
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
