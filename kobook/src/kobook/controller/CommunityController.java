package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.community.action.BlackDeleteAction;
import kobook.community.action.BlackDetailAction;
import kobook.community.action.BlackInsertAction;
import kobook.community.action.BlackInsertFormAction;
import kobook.community.action.BlackListAction;
import kobook.community.action.BlackUpdateAction;
import kobook.community.action.BlackUpdateFormAction;
import kobook.community.action.DonateDeleteAction;
import kobook.community.action.DonateDetailAction;
import kobook.community.action.DonateInsertAction;
import kobook.community.action.DonateInsertFormAction;
import kobook.community.action.DonateListAction;
import kobook.community.action.DonateReplyAddAction;
import kobook.community.action.DonateReplyDeleteAction;
import kobook.community.action.DonateReplyUpdateAction;
import kobook.community.action.DonateReplyUpdateFormAction;
import kobook.community.action.DonateUpdateAction;
import kobook.community.action.DonateUpdateFormAction;
import kobook.community.action.PhotoDeleteAction;
import kobook.community.action.PhotoDetailAction;
import kobook.community.action.PhotoHeartDownAction;
import kobook.community.action.PhotoHeartUpAction;
import kobook.community.action.PhotoInsertAction;
import kobook.community.action.PhotoInsertFormAction;
import kobook.community.action.PhotoListAction;
import kobook.community.action.PhotoUpdateAction;
import kobook.community.action.PhotoUpdateFormAction;
import kobook.community.action.QnaAction;

public class CommunityController {
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		Action action = null;

		
		//	���� ���� ��µǸ� �ش� controller�� �� �����Ѱ�!
		System.out.println("==========communityController==========");
		// /kobook/community/insertForm.do
		String requestURI = request.getRequestURI();
		System.out.println("requestURI: " + requestURI);

		// /kobook
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);

		// community/insertForm.do
		String command1 = requestURI.substring(contextPath.length() + 1);
		System.out.println("command1: " + command1);

		// insertForm.do
		String command2 = command1.substring(command1.indexOf("/") + 1);
		System.out.println("command2: " + command2);

		
		
		// ���⼭ ������ Action���� ������.
		// �ּ� Ǯ�� ���� �����Ų ������ 
		if (command2.equals("donateInsertform.do")) {
			action = new DonateInsertFormAction(); // 전문으로 담당하는
													// insertFormAction에서 정의
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command2.equals("donateInsertAction.do")) {
			action = new DonateInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateList.do")) {
			action = new DonateListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateDetail.do")) {
			action = new DonateDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateUpdateForm.do")) {
			action = new DonateUpdateFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateUpdateAction.do")) {
			action = new DonateUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateDelete.do")) {
			action = new DonateDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateReply.do")) {
			action = new DonateReplyAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateReplyUpdateForm.do")) {
			action = new DonateReplyUpdateFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateReplyUpdateAction.do")) {
			action = new DonateReplyUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("donateReplyDelete.do")) {
			action = new DonateReplyDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackInsertAction.do")) {
			action = new BlackInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}  else if (command2.equals("blackList.do")) {
			action = new BlackListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackDetail.do")) {
			action = new BlackDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackInsertform.do")) {
			action = new BlackInsertFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackUpdateForm.do")) {
			action = new BlackUpdateFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackUpdateAction.do")) {
			action = new BlackUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("blackDelete.do")) {
			action = new BlackDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("qna.do")) {
			action = new QnaAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoInsertForm.do")) {
			action = new PhotoInsertFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoInsertAction.do")) {
			action = new PhotoInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoReviewList.do")) {
			action = new PhotoListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoDetail.do")) {
			action = new PhotoDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoUpdateForm.do")) {
			action = new PhotoUpdateFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoDelete.do")) {
			action = new PhotoDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoHeartUp.do")) {
			action = new PhotoHeartUpAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoHeartDown.do")) {
			action = new PhotoHeartDownAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command2.equals("photoUpdateAction.do")) {
			action = new PhotoUpdateAction();
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
