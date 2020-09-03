package controller;

import java.io.IOException;
import java.sql.Array;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.MyBean;
import mydaou.Mydaou;

/**
 * Servlet implementation class panel_team
 */
public class panel_team extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public panel_team() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String team = request.getParameter("teams");
		String panels = request.getParameter("panels");
		
		MyBean m = new MyBean();
		
		m.setteam(team);
		m.setpanels(panels);
		
		
	
		
		
		Mydaou d = new Mydaou();	
		int result = d.insert5(m);
		if(result > 0){
			
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.include(request, response);
		}

	
	}

}
