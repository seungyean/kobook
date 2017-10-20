package kobook.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminController adminController = new AdminController();
	private BookController bookController = new BookController();
	private DonateController donateController = new DonateController();
	private MessageController messageController = new MessageController();
    private MypageController mypageController = new MypageController();
    private RecomController recomController = new RecomController();
    private IndexController indexController = new IndexController();
       
    public Controller() {
        super();
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	
    	//	/ControllerTest/main/insertForm.do
    	String requestURI = request.getRequestURI();
    	System.out.println("==========controller==========");
    	System.out.println("requestURI: " + requestURI);
    	
    	//	/ControllerTest
    	String contextPath = request.getContextPath();
    	System.out.println("contextPath: " + contextPath);
    	
    	//	main/insertForm.do
    	String command1 = requestURI.substring(contextPath.length() + 1);
    	System.out.println("command1: " + command1);
    	
    	//	main
    	String command2 = command1.substring(0, command1.indexOf("/"));
    	System.out.println("command2: " + command2);
    	
    	
    	if(command2.equals("admin")){
    		adminController.doProcess(request, response);
    	} else if(command2.equals("book")){
    		bookController.doProcess(request, response);
    	} else if(command2.equals("donate")){
    		donateController.doProcess(request, response);
    	} else if(command2.equals("message")){
    		messageController.doProcess(request, response);
    	} else if(command2.equals("mypage")){
    		mypageController.doProcess(request, response);
    	} else if(command2.equals("recom")){
    		recomController.doProcess(request, response);
    	} else if(command2.equals("main")){
    		indexController.doProcess(request, response);
    	}
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
