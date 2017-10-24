package kobook.person.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kobook.action.Action;
import kobook.action.ActionForward;

@WebServlet("/UserController")
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PersonController() {
        super();
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response){
    	String requestURI = request.getRequestURI();
        //System.out.println(requestURI);
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length()+1);
        System.out.println(command);
        
        ActionForward forward = null;
        Action action = null;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
