package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Assignment
 */
@MultipartConfig(maxFileSize = 16177215)
public class Assignment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Assignment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		

		String driver="org.postgresql.Driver";
		String url="jdbc:postgresql://ec2-34-200-101-236.compute-1.amazonaws.com:5432/dfs9n2v4auvav1";
		String user="dwvpbgiyykbnot";
		String pass="97f63975d28168a585839ca7afb0811073caa7a2ff8ac0b6d5c0ef62703f47d8";


		try {
			Class.forName(driver);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();}
		
		

	
		String asname = request.getParameter("Assignment_name");
	java.util.Date date = null;
	try {
		date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("duedate"));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	java.sql.Date duedate = new java.sql.Date(date.getTime());
	
	String course = request.getParameter("Course");
	String subject = request.getParameter("Subject_name");
	
	InputStream file = null;
	
	Part filepart = request.getPart("Assignment_file");
	
	if(filepart != null)
	{
		 System.out.println(filepart.getName());
         System.out.println(filepart.getSize());
         System.out.println(filepart.getContentType());
          
         // obtains input stream of the upload file
         file = filepart.getInputStream();
	}
	
	Connection con = null;
	PreparedStatement statement = null;
	//ResultSet resultset = null;

	String msg  = null;
	 String sql = "INSERT INTO assignment (asname,file,duedate,course,subject) values (?, ?, ?, ?, ?)";
	try {
		con = DriverManager.getConnection(url, user, pass);

         // constructs SQL statement
		 statement = con.prepareStatement(sql);
         statement.setString(1, asname);
        
         if (file != null) {
             // fetches input stream of the upload file for the blob column
             statement.setBinaryStream(2, file);
         }
         statement.setDate(3, duedate);
         statement.setString(4, course);
         statement.setString(5, subject);
         // sends the statement to the database server
         int row = statement.executeUpdate();
         if (row > 0) {
             msg= "File uploaded and saved into database";
         }
	} catch (SQLException ex) {
        msg = "ERROR: " + ex.getMessage();
        ex.printStackTrace();
    } finally {
        if (con != null) {
            // closes the database connection
            try {
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
   
        request.setAttribute("Message", msg);
        
        // forwards to the message page
        getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
	}
	}
}
