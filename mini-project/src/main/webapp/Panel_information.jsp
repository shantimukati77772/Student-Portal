<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page  import  = "java.sql.DriverManager"%>
    <%@page  import  = "java.sql.ResultSet"%>
    <%@page  import  = "java.sql.PreparedStatement"%>
    <%@page  import  = "java.sql.Connection"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
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


<div class="about-section">
  <h1>Panel Information</h1>
  <p>All the information regarding Panel and Teams are provided here.</p>
  
</div>

 
<h2 style="text-align:center">Our Panels And Teams</h2>
<div class="row">
<%
String sql = "select * from panel_team";
String first=null;
String panel = null;

try {
	
	con = DriverManager.getConnection(url, user, pass);
	statement = con.prepareStatement(sql);
	
	
	
	resultset = statement.executeQuery();

 while(resultset.next()){
	 %> 
     <div class="column">
    <div class="card">
    
      <div class="container">
        <h2>Panel No.</h2>
        <p class="title"><%=resultset.getString(2) %></p>
        <h2>Group Leader</h2>
        <p class="title"><%=resultset.getString(1) %></p>
       
       
      </div>
    </div>
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

</body>
</html>
