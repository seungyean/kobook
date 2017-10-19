package kobook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	// ��� �׼��� ������ ActionForward�� ����� (�信 ���� ���� ���� ActionForward���� ó���Ѵ�)
	// return type = ActionForward
	public ActionForward execute(HttpServletRequest request,
	         HttpServletResponse response)throws Exception;
	

}
