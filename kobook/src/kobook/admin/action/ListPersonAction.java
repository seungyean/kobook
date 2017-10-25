package kobook.admin.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Search;
import kobook.admin.domain.PersonModel;
import kobook.admin.service.AdminService;

public class ListPersonAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		AdminService service = AdminService.getInstance();

		//검색기능
	  	Search search = new Search();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		//서비스객체생성
	

		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum ="1";
		}
		
		int requestPage = Integer.parseInt(pageNum);


		PersonModel personModel = service.listPersonService(request, requestPage);
		request.setAttribute("personModel", personModel);


		forward.setPath("/userAdmin.jsp");
		forward.setRedirect(false);  
		System.out.println("listPerson Action=====================");
		return forward;
	}
}