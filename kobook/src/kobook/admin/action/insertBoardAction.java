package kobook.admin.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.admin.domain.Board;
import kobook.admin.service.AdminService;

public class insertBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 공지사항 글쓰기

		// 서비스 호출
		request.setCharacterEncoding("utf-8");
		AdminService service = AdminService.getInstance();

		Board board = new Board();

		// 파라미터 호출

		board.setBoard_writer(request.getParameter("board_writer"));
		board.setBoard_title(request.getParameter("board_title"));
		board.setBoard_content(request.getParameter("board_content"));
		
		service.insertBoardService(board);
		request.setAttribute("board", board);

	//SYSDATE 값이 안들어오는거 확인	
/*		System.out.println(board.toString());*/

		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("noti.do");

		return forward;
	}
}
