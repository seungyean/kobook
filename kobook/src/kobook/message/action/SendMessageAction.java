package kobook.message.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.service.AdminService;
import kobook.message.domain.Message;
import kobook.message.service.MessageService;

public class SendMessageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		Message message = new Message();
		int person_id = Integer.parseInt(request.getParameter("person_id"));
		String receiver_email = request.getParameter("receiver_email");
		
		AdminService aservice = AdminService.getInstance();
		MessageService mservice = MessageService.getInstance();
		ActionForward forward = new ActionForward();
		
		int receiver_id = aservice.searchP_idService(receiver_email);
		
		if(receiver_id == -1){		//받는 사람이 리스트에 없을 경우
			System.out.println("사람없음");
			forward.setRedirect(false);
			forward.setPath("/kobook/message/sendFail.jsp");
			
		} else {
			System.out.println("있음");
			message.setPerson_id(person_id);
			message.setReceiver_id(receiver_id);
			message.setMessage_content((String)request.getParameter("message_content"));
			
			mservice.sendMessageService(message);
			
			forward.setRedirect(true);
			forward.setPath("/kobook/message/sendOk.jsp");
		}
		
		return forward;
	}

}
