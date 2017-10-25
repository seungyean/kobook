package kobook.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.admin.domain.Search;
import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Person;
import kobook.admin.service.AdminService;

public class ListBlackPersonAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

	  	Search search = new Search();
		search.setArea(request.getParameterValues("area"));
		search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		request.setCharacterEncoding("utf-8");		
		ActionForward forward = new ActionForward();
		AdminService service = AdminService.getInstance();

		
		//----------------------------------
	
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum ="1";
		}
		
		int requestPage = Integer.parseInt(pageNum);
		
		
		
		
		List<Person> blackList = service.blackPersonService();
		request.setAttribute("blackList", blackList);
		

		forward.setPath("/blackAdmin.jsp");
		forward.setRedirect(false);  
	
		return forward;
	}
}
