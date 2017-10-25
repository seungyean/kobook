package kobook.recom.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.recom.domain.Favorite;
import kobook.recom.domain.FavoriteBook;
import kobook.recom.service.RecomService;

public class RecomDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RecomService service = RecomService.getInstance();
		request.setCharacterEncoding("utf-8");
		
		Favorite favorite = new Favorite();
		
		favorite.setBook_id(Integer.parseInt(request.getParameter("book_id")));
		favorite.setFavorite_id(Integer.parseInt(request.getParameter("favorite_id")));
		favorite.setFavorite_major(request.getParameter("favorite_major"));
		favorite.setFavorite_name(request.getParameter("favorite_name"));
		favorite.setPerson_id(Integer.parseInt((String)request.getSession().getAttribute("person_id")));
		
		service.deleteFavoriteService(favorite);
		
		request.setAttribute("person_id", favorite.getPerson_id());
		System.out.println("request¿« set : "+ (String)request.getSession().getAttribute("person_id"));
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/kobook/recom/recommendAction.do");
		
		return forward;
	}

}
