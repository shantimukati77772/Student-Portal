<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import  = "java.sql.DriverManager"%>
    <%@page  import  = "java.sql.ResultSet"%>
    <%@page  import  = "java.sql.PreparedStatement"%>
    <%@page  import  = "java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
<title>Faculty_Maneger</title>
  <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">

</head>
<body>
 <%

String driver="org.postgresql.Driver";
String url="jdbc:postgresql://ec2-34-200-101-236.compute-1.amazonaws.com:5432/dfs9n2v4auvav1";
String user="dwvpbgiyykbnot";
String pass="97f63975d28168a585839ca7afb0811073caa7a2ff8ac0b6d5c0ef62703f47d8";


try {
	Class.forName(driver);

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();}
Connection con = null;
PreparedStatement statement = null;
ResultSet resultset = null;


%>

<%
String s = request.getParameter("course");
String s1 = request.getParameter("program");
String s2 = request.getParameter("branch");
String s3 = request.getParameter("semester");
String s4 = request.getParameter("first_slotter");
String s5 = request.getParameter("second_slotter");
String s6 = request.getParameter("third_slotter");
%>



	 

 <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.png" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" class="faculty-form" id="faculty-form" action = "faculty_manager">
                        <h2>Faculty Assign Form</h2>
   
<div class="form-row">
                            <div class="form-group">
     <label for="Student_List">Student First Slotter List :</label>
     <div class="form-select">
      <select name="student_listf" id="student_list" multiple="multiple" required>
       
<%
String sql = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s4);
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("name") %>"><%=resultset.getString("name") %></option>
        
   
    
    <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 
 </select>
 

         <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
  <div class="form-group">
  <label for="Student_email">Student Email :</label>
     <div class="form-select">
      <select name="student_emailf" id="student_email" multiple="multiple" required>
                           


<%
String sql1 = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ? ";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql1);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s4);
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("email") %>"><%=resultset.getString("email") %></option>
        
   
    
   <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 </select>
   <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
                        </div>
<div class="form-row">
                            <div class="form-group">
     <label for="Student_List">Student Second Slotter List :</label>
     <div class="form-select">
      <select name="student_lists" id="student_list" multiple="multiple" required>
 <%
String sql2 = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ? and cpi < ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql2);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s5);
	statement.setString(6, s4);
	
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("name") %>"><%=resultset.getString("name") %></option>
        
   
    
    <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 
 </select>
 

         <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
  <div class="form-group">
  <label for="Student_email">Student Email :</label>
     <div class="form-select">
      <select name="student_emails" id="student_email" multiple="multiple" required>
                           


<%
String sql3 = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ? and cpi < ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql3);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s5);
	statement.setString(6, s4);
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("email") %>"><%=resultset.getString("email") %></option>
        
   
    
   <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 </select>
   <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
                        </div>
 <div class="form-row">
                            <div class="form-group">
     <label for="Student_List">Student Third Slotter List :</label>
     <div class="form-select">
      <select name="student_listt" id="student_list" multiple="multiple" required>
 <%
String sql6 = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ? and cpi < ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql6);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s6);
	statement.setString(6, s5);
	
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("name") %>"><%=resultset.getString("name") %></option>
        
   
    
    <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 
 </select>
 

         <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
  <div class="form-group">
  <label for="Student_email">Student Email :</label>
     <div class="form-select">
      <select name="student_emailt" id="student_email" multiple="multiple" required>
                           


<%
String sql7 = "select * from registration where course = ? and program = ? and branch = ? and semester=? and cpi >= ? and cpi < ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql7);
	statement.setString(1, s);
	statement.setString(2, s1);
	statement.setString(3, s2);
	statement.setString(4, s3);
	statement.setString(5, s6);
	statement.setString(6, s5);
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("email") %>"><%=resultset.getString("email") %></option>
        
   
    
   <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 </select>
   <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
                        </div>
 
<div class="form-row">
                            <div class="form-group">
     <label for="faculty_name">faculty List :</label>
     <div class="form-select">
      <select name="faculty_name" id="faculty_name" required>
       
<%
String sql4 = "select * from faculty";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql4);

	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("name") %>"><%=resultset.getString("name") %></option>
        
   
    
    <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
 
 </select>
 

         <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
 
  <div class="form-group">
  <label for="faculty_email">faculty Email :</label>
     <div class="form-select">
      <select name="faculty_email" id="faculty_email"  required>
                           


<%
String sql5 = "select * from faculty";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql5);
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
         <option value = "<%=resultset.getString("email") %>"><%=resultset.getString("email") %></option>
        
   
    
   <%

 }
 
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
con.close();
%>	
 </select>
   <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
    
 </div>
 </div>
       </div>
                        
                        <div class="form-submit">
                            <input type="submit" value="Submit Form/Sent Email" class="submit" name="submit" id="submit" />
                        </div>
</form>

 
                        </div>
                       
                        
                       
                       
                      
                        </div>
                        </div>
                        </div>
                       
                        
</body>
</html>