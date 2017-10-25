package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Person;
import kobook.admin.service.AdminService;

public class GradeUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		AdminService service = AdminService.getInstance();	
		request.setCharacterEncoding("utf-8");
		String person_id = request.getParameter("person_id");
		String person_sell_grade = request.getParameter("person_sell_grade");
		String person_kind = request.getParameter("person_kind");
		
		Person person = service.detailPersonService(Integer.parseInt(person_id));
		person.setPerson_sell_grade(person_sell_grade);
		person.setPerson_kind(person_kind);
		

		
		int re = service.gradeupdateService(person);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("listUser.do"); 
		forward.setRedirect(false);
		
		return forward;
	}
}
