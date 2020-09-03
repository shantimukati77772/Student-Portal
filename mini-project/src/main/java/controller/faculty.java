package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.MyBean;
import mydaou.Mydaou;

/**
 * Servlet implementation class faculty
 */
public class faculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public faculty() {
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

		
	String faculty_name = request.getParameter("faculty_name");
	String id1 = request.getParameter("id1");
	java.util.Date date = null;
	try {
		date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("faculty_dob"));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	java.sql.Date faculty_dob = new java.sql.Date(date.getTime());
	String faculty_email = request.getParameter("faculty_email");
	String faculty_mobile = request.getParameter("faculty_mobile");
	String pass = request.getParameter("pass");
	String post = request.getParameter("post");
	
	MyBean m = new MyBean();
	
	m.setfaculty_name(faculty_name);
	m.setid1(id1);
	m.setfaculty_dob(faculty_dob);
	m.setfaculty_email(faculty_email);
	m.setfaculty_mobile(faculty_mobile);
	m.setpass(pass);
	m.setpost(post);
	
	Mydaou d = new Mydaou();	
	int result = 0;
	try {
		result = d.insert2(m);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(result > 0){
		
		RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
		rd.include(request, response);
	}

	}

}
