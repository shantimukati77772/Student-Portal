<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Assignment page</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
        <style>
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
  <a href="home.jsp" >Home</a>
  <a href="faculty_manager.jsp">Faculty-in-batches </a>
  <a href="Assignment.jsp" class="active">Assignment</a>
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

           
                <div class="signup-form" >
                    <form enctype="multipart/form-data" method="POST" class="register-form" id="assignment-form" action = "Assignment">
                        <h2>Assignment</h2>
                        
                            <div class="form-group" >
                                <label for="Assignment_name">Assignment Name :</label>
                                <input align="center" type="text" name="Assignment_name" id="Assignment_name" required/>
                            </div>
                                  
                                                        <div class="form-group">
                                <label for="Assignment_file">Assignment file :</label>
                                <input type="file" name="Assignment_file" id="Assignment_file" required/>
                            </div>
   
                  <div class="form-group">
                            <label for="duedate">Due Date :</label>
                            <input  type="date" name="duedate" id="duedate" required/>
                        </div>
                        <div class="form-group">
                                <label for="Course">Course :</label>
                                <input type="text" name="Course" id="Course" required/>
                            </div>
 						<div class="form-group">
                                <label for="Subject_name">Subject Name :</label>
                                <input type="text" name="Subject_name" id="Subject_name" required/>
                            </div>
                        <div class="form-submit">
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
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