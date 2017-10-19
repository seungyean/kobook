package kobook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	// 모든 액션이 끝나면 ActionForward로 가기로 (뷰에 대한 선택 역시 ActionForward에서 처리한다)
	// return type = ActionForward
	public ActionForward execute(HttpServletRequest request,
	         HttpServletResponse response)throws Exception;
	

}
