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
 * Servlet implementation class faculty_manager
 */
public class faculty_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public faculty_manager() {
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
	String[] student_listsf = request.getParameterValues("student_listf");
	String[] student_listss = request.getParameterValues("student_lists");
	String[] student_listst = request.getParameterValues("student_listt");
	String[] student_emailf = request.getParameterValues("student_emailf");
	String[] student_emails = request.getParameterValues("student_emails");
	String[] student_emailt = request.getParameterValues("student_emailt");
	String faculty_email = request.getParameter("faculty_email");
	
	
		
	MyBean m = new MyBean();
	
	m.setfaculty_name(faculty_name);
	m.setstudent_lists(student_listsf);
	m.setstudent_email(student_emailf);
	m.setstudent_listss(student_listss);
	m.setstudent_emails(student_emails);
	m.setstudent_listst(student_listst);
	m.setstudent_emailt(student_emailt);
	
	
	m.setfaculty_email(faculty_email);
	
	Mydaou d = new Mydaou();	
	int result = 0;
	for(int i=0;i<student_listsf.length||i<student_listss.length||i<student_listst.length;i++)
	{
	try {
		result = d.insert3(student_listsf[i],student_emailf[i],student_listss[i],student_emails[i],student_listst[i],student_emailt[i],faculty_name,faculty_email);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	if(result > 0){
		
		RequestDispatcher rd=request.getRequestDispatcher("send-mail.jsp");
		rd.include(request, response);
	}


	
	}



}
