package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.service.AdminService;

public class deleteNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

	request.setCharacterEncoding("utf-8");	
	//공지사항아이디 가져오기
	int board_id = Integer.parseInt(request.getParameter("board_id"));
		
	//서비스객체생성
	AdminService service = AdminService.getInstance();
	
	//서비스에 공지사항아이디를 넣는다.
	service.deleteNotiService(board_id);
	
	ActionForward forward = new ActionForward();


		
	request.setAttribute("board_id", board_id);


	forward.setPath("noti.do"); 	 
	forward.setRedirect(false);  

	return forward;
}
	
}
