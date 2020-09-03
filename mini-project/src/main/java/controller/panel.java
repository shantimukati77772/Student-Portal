package controller;
import connection.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.Connection;
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
 * Servlet implementation class panel
 */
public class panel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public panel() {
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
		Connection con=Connect.dbcon();
		
	String[] list = request.getParameterValues("list");
	
	MyBean m = new MyBean();
	
	m.setlist(list);
	
	
	Array list1 = null;
	try {
	list1 = con.createArrayOf("text", m.getlist());
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	
	
	Mydaou d = new Mydaou();	
	int result = 0;
	try {
		result = d.insert4(list1);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(result > 0){
		
		RequestDispatcher rd=request.getRequestDispatcher("Panel.jsp");
		rd.include(request, response);
	}

	}

}
