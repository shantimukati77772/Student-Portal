<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Faculty-Manager</title>

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
.active, .btn:hover {
  background-color: #666;
  color: white;
}
</style>
    
</head>
<body>

    <div class="main">
        <div class="container">
  <div class="topnav" id="myTopnav">
      <h6 style = "float:top;float:right;color:white;">Admin</h6>
  <a href="home.jsp" >Home</a>
  <a href="faculty_manager.jsp" class="active">Faculty-in-batches </a>
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
                    <form method="POST" class="register-form" id="register-form" action = "faculty.jsp">
                        <h2>Faculty Manager</h2>
                        
                      <div class="form-group">
                            <label for="course">Course :</label>
                            <div class="form-select">
                                <select name="course" id="course"
                                onchange="ChangeCourseList()">
                                    <option value="">Select any course</option>
                                    <option value="UG">Under Graduate</option>
                                    <option value="PG">Post Graduate</option>
                                    <option value="PHD">PHD</option>
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="program">Program :</label>
                            <div class="form-select">
                                <select name="program" id="program" onchange="ChangeCourseList1()"> 
                                
                                </select>
                                
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="branch">Branch :</label>
                            <div class="form-select">
                                <select name="branch" id="branch"> </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                        
                        
                        <script>
                        
                        var course = {};
                        course['UG'] = ['select any course','B.Tech'];
                        course['PG'] = ['select any course','MCA','MBA','M.Sc'];
                        course['PHD'] = ['select any course','NA'];
                        
                        


function ChangeCourseList() {
  var courseList = document.getElementById("course");
  var branchList = document.getElementById("program");
  var Course2 = courseList.options[courseList.selectedIndex].value;
  while (branchList.options.length) {
    branchList.remove(0);
  }
  var cars = course[Course2];
  if (cars) {
    var i;
    for (i = 0; i < cars.length; i++) {
      var car = new Option(cars[i], cars[i]);
     branchList.options.add(car);
    }
  }
}


</script>
<script>
var course1 = {};
course1['B.Tech'] = ['B.Tech- Aeronautical Engineering','B.Tech- Automobile Engineering','B.Tech- Biotechnology','B.Tech- Civil Engineering',
	'B.Tech- Computer Science and Engineering','B.Tech- Electrical and Electronics Engineering','B.Tech- Mechanical Engineering',
	'B.Tech- Electronics & Communication'];
course1['MCA'] = ['NA'];
course1['MBA'] = ['NA'];
course1['M.Sc'] = ['NA'];
course1['NA'] = ['NA'];

function ChangeCourseList1() {
	  var courseList1 = document.getElementById("program");
	  var branchList1 = document.getElementById("branch");
	  var Course21 = courseList1.options[courseList1.selectedIndex].value;
	  while (branchList1.options.length) {
	    branchList1.remove(0);
	  }
	  var cars1 = course1[Course21];
	  if (cars1) {
	    var i;
	    for (i = 0; i < cars1.length; i++) {
	      var car1 = new Option(cars1[i], cars1[i]);
	     branchList1.options.add(car1);
	    }
	  }
	} 
</script>
<div class="form-group">
                            <label for="semester">Semester :</label>
                            <div class="form-select">
                                <select name="semester" id="semester"
                                >
                                    <option value="">Select semester</option>
                                    <option value="I">I</option>
                                    <option value="II">II</option>
                                    <option value="III">III</option>
                                    <option value="IV">IV</option>
                                    <option value="V">V</option>
                                    <option value="VI">VI</option>
                                    <option value="VII">VII</option>
                                    <option value="VIII">VIII</option>
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                             <div class="form-group">
                            <label for="first_slotter">First Slotter minimum CPI :</label>
                           
                              <input  type="text" name="first_slotter" id="first_slotter" required/>
                        </div>
                        
                        <div class="form-group">
                            <label for="second_slotter">Second Slotter minimum CPI :</label>
                        <input  type="text" name="second_slotter" id="second_slotter" required/></div>
                        <div class="form-group">
                            <label for="third_slotter">Third Slotter minimum CPI :</label>
                              <input  type="text" name="third_slotter" id="third_slotter" required/>
                        </div>
                        
                        </div>
							 <div class="form-submit">
                            <input type="submit" value="Get Student List" class="submit" name="submit" id="submit" />
                        
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