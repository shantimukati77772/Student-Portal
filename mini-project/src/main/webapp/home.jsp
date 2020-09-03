<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add faculty</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  background-color: #ddd;
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

    <div class="main">
    
        <div class="container">
    
   <div class="topnav" id="myTopnav">
       <h6 style = "float:top;float:right;color:white;">Admin</h6>
  <a href="home.jsp" class="active">Home</a>
  <a href="faculty_manager.jsp">Faculty-in-batches </a>
  <a href="Panel.jsp">Panel</a>
  <a href="Panel_assign.jsp">Assign Panel</a>
   <a href="panel_details.jsp">Panel Information</a>
  <a href="Panel_information.jsp">Panel And Team</a>
  <a href="find_user.jsp">Find_user</a>
  <a href="index.jsp">Logout</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.png" alt="">
                </div>
      
                <div class="signup-form">
                    <form method="POST" class="register-form" id="faculty_form" action = "faculty">
                        <h2>Add Faculty</h2>
                        
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="faculty_name" id="faculty_name"  required/>
                            </div>
                            
                        <div class="form-group">
                                <label for="name">ID :</label>
                                <input type="text" name="id1" id="id1"  required/>
                            </div>
                        <div class="form-group">
                            <label for="dob">DOB :</label>
                            <input  type="date" name="faculty_dob" id="faculty_dob" required/>
                        </div>
                        
                       
                        
                       
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="faculty_email" id="faculty_email" required/>
                        </div>
                        <div class="form-group">
                            <label for="mobile">Mobile :</label>
                            <input type="text" name="faculty_mobile" id="faculty_mobile" required/>
                        </div>
                         <div class="form-group">
                            <label for="pass">Password :</label>
                            <input type="password" name="pass" id="pass" required/>
                        </div>
                         <div class="form-group">
                            <label for="post">Post :</label>
                            <input type="text" name="post" id="post" required/>
                        </div>
                       
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Add" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
  <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</body>
</html>