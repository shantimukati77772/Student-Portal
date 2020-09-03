<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registration page</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
    <style type="text/css">
    .tab {
  display: none;
}
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}

    
    </style>
</head>
<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.png" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form"  id="register-form" action = "Register" enctype="multipart/form-data">
                        <h2>student registration form</h2>
                        <div class = "tab"> <h2>Personal Details :</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="name" id="name" required/>
                            </div>
                            <div class="form-group">
                                <label for="father_name">Father Name :</label>
                                <input type="text" name="father_name" id="father_name" required/>
                            </div>
                        </div>
                       <div class="form-group">
                            <label for="dob">DOB :</label>
                            <input  type="date" name="dob" id="dob" required/>
                        </div>
                       <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" checked value = "male">
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female" value = "female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        
                                                 
                                                   <div class="form-group">
                                <label for="religion">Religion :</label>
                                <input type="text" name="religion" id="religion" required/>
                         </div>
         
                                                   
                       </div>
                       
                       
                       <div class = "tab"><h2>Educational Details :</h2>
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
                            <label for="session">Session :</label>
                            <input type="text" name="session" id="session" required/>
                        </div>

 <div class="form-group">
                            <label for="department">Department :</label>
                            <input type="text" name="department" id="department" required/>
                        </div>

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
                        </div>
                        <div class="form-group">
                            <label for="cpi">CPI :</label>
                            <input type="text" name="cpi" id="cpi" required/>
                        </div>
</div>

<div class = "tab"><h2>Contact Details :</h2>

                         <div class="form-group">
                            <label for="address">Address :</label>
                            <input type="text" name="address" id="address" required/>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value="">Select any state</option>
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujarat">Gujarat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Odisha">Odisha</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil Nadu">Tamil Nadu</option>
                                        <option value="Telangana">Telangana</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="West Bengal">West Bengal</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            </div>
                                                   <div class="form-group">
                            <label for="aadhar">Aadhar Number :</label>
                            <input type="text" name="aadhar" id="aadhar" required/>
                        </div>
                           
                        <div class="form-group">
                            <label for="mobile">Mobile :</label>
                            <input type="number" name="mobile" id="mobile" required/>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="email" id="email" required/>
                        </div>
                       </div>
                       <div class = "tab">
                        <h2 class="form-title">Sign up</h2>
                        <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="username" placeholder="UserName" required="required"/>
                            </div>
                           
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_password" id="re_password" onblur="checkPassword()" placeholder="Repeat your password" required="required"/>
                            </div>
                           
                        <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="index.jsp" class="signup-image-link">I am already member</a>
                    </div>
                       
                       </div>
                        <div class="form-submit">
                            <input type="submit" value="Prev" class="submit" name="reset" id="reset" onclick="nextPrev(-1)" />
                            <input type="submit" value="Next" class="submit" name="submit" id="submit" onclick="nextPrev(1)"/>
                        </div>
                        <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
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
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  if (n == 0) {
    document.getElementById("reset").style.display = "none";
  } else {
    document.getElementById("reset").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("submit").value = "Submit";
  } else {
    document.getElementById("submit").value = "Next";
  }
  fixStepIndicator(n)
}

function nextPrev(n) {
  var x = document.getElementsByClassName("tab");
  if (n == 1 && !validateForm()) return false;
  x[currentTab].style.display = "none";
  currentTab = currentTab + n;
  if (currentTab >= x.length) {
    document.getElementById("register-form").submit();
    return false;
  }
  showTab(currentTab);
}

function validateForm() {
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  for (i = 0; i < y.length; i++) {
    if (y[i].value == "") {
      y[i].className += " invalid";
      valid = false;
    }
  }
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; 
}

function fixStepIndicator(n) {
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  x[n].className += " active";
}
</script>

    <script> 
          
            // Function to check Whether both passwords 
            // is same or not. 
            function checkPassword() { 
                password1 = document.getElementById("password").value;
                password2 = document.getElementById("re_password").value; 
  
                // If password not entered 
                if (password1 == '') 
                    alert ("Please enter Password"); 
                      
                // If confirm password not entered 
                else if (password2 == '') 
                    alert ("Please enter confirm password"); 
                      
                // If Not same return False.     
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
                // If same return True. 
                else{ 
                   
                    return true; 
                } 
            } 
        </script> 
    
</body>
</html>