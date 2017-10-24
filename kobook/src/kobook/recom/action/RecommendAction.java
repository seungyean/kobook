package kobook.recom.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.recom.domain.Alarm;
import kobook.recom.domain.FavoriteBook;
import kobook.recom.service.RecomService;

public class RecommendAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RecomService service = RecomService.getInstance();
		request.setCharacterEncoding("utf-8");

		List<FavoriteBook> list = service.getFavoriteService(Integer.parseInt((String)request.getSession().getAttribute("person_id")));
		request.setAttribute("list", list);
		
		List<Alarm> alarmList = service.AlarmListService(Integer.parseInt((String)request.getSession().getAttribute("person_id")));
		request.setAttribute("alarmList", alarmList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/main.jsp");
		
		return forward;
	}

}
