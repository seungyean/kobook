package kobook.recom.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.recom.domain.Alarm;
import kobook.recom.domain.FavoriteBook;
import kobook.admin.domain.Person;
import kobook.recom.service.RecomService;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecomService service = RecomService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String person_email = request.getParameter("email");
		String person_pwd = request.getParameter("pw");
		System.out.println(person_email);
		System.out.println(person_pwd);
		System.out.println("로그인 액션 진입");
		
		Person person = new Person();
		person = service.loginCheck(person_email);
		
		ActionForward forward = new ActionForward();
		
		if(person_email.equals(person.getPerson_email()) && person_pwd.equals(person.getPerson_pwd())){
			System.out.println("로그인 성공");
			String person_id = (service.loginService(person_email)) + "";
			session.setAttribute("person_id", person_id);
			
			forward.setRedirect(false);
			forward.setPath("/recom/recommendAction.do");	
		}else{
			System.out.println("회원정보가 정확하지 않습니다.");
			forward.setRedirect(false);
			forward.setPath("/main.jsp");	
		}
		
		return forward;
	}

}
