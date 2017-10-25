package kobook.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.dao.PersonDAO;
import kobook.admin.domain.Person;
import kobook.admin.service.AdminService;

public class DetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		int person_id = Integer.parseInt(request.getParameter("person_id"));
		PersonDAO dao = PersonDAO.getInstance();
		
//		AdminService service = AdminService.getInstance();
		
		
		Person person = dao.detailPerson(person_id);
		
		request.setAttribute("person", person);

		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/admin/detail.jsp");
		return forward;

	}
}
