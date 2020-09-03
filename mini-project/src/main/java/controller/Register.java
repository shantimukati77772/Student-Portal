package controller;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import mybean.MyBean;
import mydaou.Mydaou;

/**
 * Servlet implementation class Register
 */

@WebServlet("/Register")
@MultipartConfig(maxFileSize = 16177215)
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
 	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");

		
		
		String name = request.getParameter("name");
	String father_name = request.getParameter("father_name");
	java.util.Date date = null;
	try {
		date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	java.sql.Date dob = new java.sql.Date(date.getTime());


	String gender =request.getParameter("gender");
	String program =request.getParameter("program");
	String branch =request.getParameter("branch");
	String email =request.getParameter("email");
	String mobile =request.getParameter("mobile");
	String address =request.getParameter("address");
	String state =request.getParameter("state");
	//String city = request.getParameter("city");
	//String pincode =request.getParameter("pincode");
	String course = request.getParameter("course");
	String dept = request.getParameter("department");
	String session = request.getParameter("session");
	String religion = request.getParameter("religion");
	String semester = request.getParameter("semester");
	String aadhar = request.getParameter("aadhar"); 
	String cpi = request.getParameter("cpi");
	
	//String myimg = request.getParameter("image");
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	/*Part part = request.getPart("image");
	String filename = extractfilename(part);
	String savepath = "D:\\workspace\\mini-project\\src\\main\\webapp\\images\\image" +File.separator + filename;
	File filesavedir = new File(savepath);
	
	part.write(savepath+File.separator);
	
	*/
	
	
	
MyBean m = new MyBean();
	m.setname(name);
	m.setfather_name(father_name);
	m.setdob(dob);
	m.setgender(gender);
	m.setprogram(program);
	m.setbranch(branch);
	m.setemail(email);
	m.setmobile(mobile);
	m.setaddress(address);
	m.setstate(state);
	m.setcourse(course);
	m.setdept(dept);
	m.setsession(session);
	m.setsemester(semester);
	m.setaadhar(aadhar);
	m.setreligion(religion);
	//m.setimage(myimg);
	m.setusername(username);
	m.setpassword(password);
	//m.setimagefile(filename);
	//m.setsavepath(savepath);
	m.setcpi(cpi);

	Mydaou d = new Mydaou();	
	int result = 0;
	try {
		result = d.insert(m);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(result > 0){
		
		RequestDispatcher rd=request.getRequestDispatcher("successful.jsp");
		rd.include(request, response);
	
	
	
	
	
	}

	
	}
	
	private String extractfilename(Part part) {
	String contentDisp = part.getHeader("content-disposition");
	String[] items = contentDisp.split(";");
	for(String s:items)
	{
		if(s.trim().startsWith("filename")) {
			return s.substring(s.indexOf("=")+2,s.length()-1);
		}
	}
		
		return "";
	}
	

}
