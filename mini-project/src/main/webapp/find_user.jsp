<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Find User</title>
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
  <a href="home.jsp" >Home</a>
  <a href="faculty_manager.jsp">Faculty-in-batches </a>
  <a href="Panel.jsp">Panel</a>
  <a href="Panel_assign.jsp">Assign Panel</a>
  <a href="find_user.jsp" class="active">Find_user</a>
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
                
                 <h2 id="h">Find User</h2>
                        
                        
                         <div class="form-submit">
                         <input type="submit" value="Find Student" class="submit" name="submit" id="student_find" onclick = "student()"/>
                        </div>
                                <div class="form-submit">
                            <input type="submit" value="Find Faculty" class="submit" name="submit" id="faculty_find" onclick = "faculty()" />
                        </div>  
                  
                    <form method="POST" class="register-form" id="student_form" action = "student_found.jsp" style = "display:none;">
                       
                                <h2>Find Student</h2>
                           
                         
                        <div class="form-group">
                                <label for="name">Enter Name :</label>
                                <input type="text" name="student_name" id="student_name"  required/>
                            </div>
                            
                        
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
                                <select name="semester" id="semester">
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
                        </div>
                         <div class="form-submit">
                            
                            <input type="submit" value="Find User" class="submit" name="submit" id="submit" />
                        </div>
</form>


<form method="POST" class="register-form" id="faculty_form" action = "faculty_found.jsp" style = "display:none;">
  <h2>Find Faculty</h2>
                        
                        
                          <div class="form-group">
                                <label for="faclty_name">Enter Name :</label>
                                <input type="text" name="faculty_name" id="faculty_name"  required/>
                            </div>
                         <div class="form-submit">
                            
                            <input type="submit" value="Find Faculty" class="submit" name="submit" id="submit" />
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

<script type="text/javascript">
function student()
{
	document.getElementById('student_form').style.display = "block";
	document.getElementById('faculty_find').style.display = "none";
	document.getElementById('student_find').style.display = "none";
	document.getElementById('h').style.display = "none";
	}
function faculty()
{
	document.getElementById('faculty_form').style.display = "block";
	document.getElementById('student_find').style.display = "none";
	document.getElementById('faculty_find').style.display = "none";
	document.getElementById('h').style.display = "none";
	}
</script>
    
</body>
</html>