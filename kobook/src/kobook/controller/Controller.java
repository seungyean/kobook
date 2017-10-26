package kobook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;
import kobook.action.ViewMainAction;


@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminController adminController = new AdminController();
	private BookController bookController = new BookController();
	private CommunityController communityController = new CommunityController();
	private MessageController messageController = new MessageController();
    private MypageController mypageController = new MypageController();
    private RecomController recomController = new RecomController();
    private ChatbotController chatbotController = new ChatbotController();
       
    public Controller() {
        super();
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	
    	ActionForward forward = null;
		Action action = null;
    	
    	//	/kobook/admin/insertForm.do
    	String requestURI = request.getRequestURI();
    	System.out.println("==========controller==========");
    	System.out.println("requestURI: " + requestURI);
    	
    	//	/kobook
    	String contextPath = request.getContextPath();
    	System.out.println("contextPath: " + contextPath);
    	
    	//	admin/insertForm.do
    	String command1 = requestURI.substring(contextPath.length() + 1);
    	System.out.println("command1: " + command1);
    	
    	
    	// main�������� ����
    	if(command1.equals("index.do")){
    		
    		// action ��ü ����
			action = new ViewMainAction();
		
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			// forward�� ��ü�ϴ� ���� 
			if(forward != null){
				if(forward.isRedirect()){	// rediredct�� ������ �̵�
					response.sendRedirect(forward.getPath());
				} else {	//dispatcher�� ������ �̵�
					RequestDispatcher dispatcher = 
							request.getRequestDispatcher(forward.getPath());
					dispatcher.forward(request, response);
				}
			}
    	}
    	
    	// ������������ ������ ������ ��� ������
    	else {
    		
        	String command2 = command1.substring(0, command1.indexOf("/"));
        	System.out.println("command2: " + command2);
        	
        	
        	if(command2.equals("admin")){
        		adminController.doProcess(request, response);
        	} else if(command2.equals("book")){
        		bookController.doProcess(request, response);
        	} else if(command2.equals("community")){
        		communityController.doProcess(request, response);
        	} else if(command2.equals("message")){
        		messageController.doProcess(request, response);
        	} else if(command2.equals("mypage")){
        		mypageController.doProcess(request, response);
        	} else if(command2.equals("recom")){
        		recomController.doProcess(request, response);
        	} /*else if(command2.equals("chatbot")){
        		chatbotController.doProcess(request, response);
        	}*/
    	}
    	
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
