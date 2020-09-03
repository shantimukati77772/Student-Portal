<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page  import  = "java.sql.DriverManager"%>
    <%@page  import  = "java.sql.ResultSet"%>
    <%@page  import  = "java.sql.PreparedStatement"%>
    <%@page  import  = "java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Faculty</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
    <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ADD8E6;
  color: black;
}

.topnav a.active {
  background-color: blue;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
    
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
String s = request.getParameter("faculty_name");
String sql = "select * from faculty where name = ?";

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql);
	statement.setString(1, s);
	
	
	resultset = statement.executeQuery();

 if(resultset.next()){
	 %>

    <div class="main">
        <div class="container">
  
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.png" alt="">
                </div>
      
                <div class="signup-form">
                    <h1>Welcome <%=resultset.getString("name")%> </h1>
 
	  <div class="form-group">
                            <label for="Facultyid">Faculty Id :</label>
                            <input  type="text" name="fid" id="fid" value = "<%=resultset.getString(1) %>"readonly disabled="disabled"/>
                        </div>
      <div class="form-group">
                            <label for="Facultyname">Faculty Name :</label>
                            <input  type="text" name="fname" id="fname" value = "<%=resultset.getString(2) %>" readonly disabled="disabled"/>
                        </div>
     
	 <div class="form-group">
                            <label for="Facultydob">Faculty DOB :</label>
                            <input  type="text" name="fdob" id="fdob" value = "<%=resultset.getString(3) %>"readonly disabled="disabled"/>
                        </div>
     <div class="form-group">
                            <label for="Facultyemail">Faculty Email :</label>
                            <input  type="text" name="femail" id="femail" value = "<%=resultset.getString(4) %>"readonly disabled="disabled"/>
                        </div>
     
  <div class="form-group">
                            <label for="Facultymobile">Faculty Mobile :</label>
                            <input  type="text" name="fmobile" id="fmobile" value = "<%=resultset.getString(5) %>"readonly disabled="disabled"/>
                        </div>
     					
   <%

 }
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	
}
con.close();
%>	
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>

    
</body>
</html>