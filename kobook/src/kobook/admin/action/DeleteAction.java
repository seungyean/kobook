package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.service.AdminService;

public class DeleteAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

	request.setCharacterEncoding("utf-8");	
	//회원아이디 가져오기
	int person_id = Integer.parseInt(request.getParameter("person_id"));		
		
	//서비스객체생성
	AdminService service = AdminService.getInstance();
	
	
	//서비스에 회원아이디를 넣는다.
	service.deletePersonService(person_id);

	
	ActionForward forward = new ActionForward();

	request.setAttribute("person_id", person_id);
	service.deletePersonService(person_id); 
		

	forward.setPath("listUser.do"); 	 
	forward.setRedirect(false);  

	return forward;
}
}
