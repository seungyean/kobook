package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.action.DeleteAction;
import kobook.admin.action.DetailAction;
import kobook.admin.action.DetailNotiAction;
import kobook.admin.action.GradeUpdateAction;
import kobook.admin.action.ListBlackPersonAction;
import kobook.admin.action.ListBoardAction;
import kobook.admin.action.ListPersonAction;
import kobook.admin.action.UpdateNotiAction;
import kobook.admin.action.deleteNotiAction;
import kobook.admin.action.insertBoardAction;
import kobook.admin.action.insertBoardFormAction;

public class AdminController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;
		
		//	밑의 줄이 출력되면 해당 controller로 잘 진입한것!
		System.out.println("==========bookCon==========");
		// /kobook/admin/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		// admin/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);

		
		
		// 여기서 각각의 Action으로 보낸다.
		// .do 수정하고 각자 연결시킨 곳으로
		
		// 회원리스트출력 .do
		if (command2.equals("listUser.do")) {

			action = new ListPersonAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 회원상세보기 .do
		} else if (command2.equals("detail.do")) {

			action = new DetailAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 회원등급 .do
		} else if (command2.equals("gradeUser.do")) {

			action = new GradeUpdateAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			// 회원정보삭제 .do
		} else if (command2.equals("delete.do")) {

			action = new DeleteAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			//블랙유저 글리스트
		} else if(command2.equals("blackUser.do")){
			
			action = new ListBlackPersonAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
	//-------------------------------------공지사항-------------------------------------

			//공지사항 글목록
		} else if (command2.equals("noti.do")) {

			action = new ListBoardAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			//공지사항 글입력 출력
		} else if (command2.equals("insertBoard.do")) {

			action = new insertBoardAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//공지사항 글입력폼
		} else if (command2.equals("insertformBoard.do")) {

			action = new insertBoardFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//공지사항 상세보기
		} else if(command2.equals("boardDetail.do")) {
			
			action = new DetailNotiAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//공지사항글삭제
		} else if(command2.equals("deleteNoti.do")){
			
			action = new deleteNotiAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//공지사항 수정
		} else if(command2.equals("updateNoti.do")){
			
			action = new UpdateNotiAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		// 	forward를 해체하는 과정
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
