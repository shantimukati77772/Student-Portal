package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.MyBean;
import mydaou.Mydaou;

/**
 * Servlet implementation class Facultylogin
 */
public class Facultylogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Facultylogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		
		
		String userId = request.getParameter("username");
	String password = request.getParameter("password");
	
	
	
	
	MyBean m = new MyBean();
	m.setuserid(userId);
	m.setpass(password);
	
	Mydaou d = new Mydaou();

	ResultSet rs = null;
	try {
		rs = d.Userlogin3(m);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}


		try {
			if(rs.next()){
				
			HttpSession session = request.getSession();
			
			session.setAttribute("val", userId);
			
			RequestDispatcher rd = request.getRequestDispatcher("faculty1.jsp");
			
			rd.include(request, response);
			}
			
			else{
				
				   out.println("<script type=\"text/javascript\">");
				   out.println("alert('User or password incorrect');");
				   out.println("location='facultylogin.jsp';");
				   out.println("</script>");
				
				//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				//rd.include(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
