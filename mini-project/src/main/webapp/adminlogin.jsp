<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<!DOCTYPE html>
<html class="transition-navbar-scroll top-navbar-xlarge bottom-footer" lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login</title>
    <link href="css/vendor/all.css" rel="stylesheet">
    <link href="css/app/app.css" rel="stylesheet">
  </head>

  <style type="text/css">  
    .login-form {
      width: 385px;
      margin: 30px auto;
    }
    .login-form form {        
      margin-bottom: 15px;
      background: #f7f7f7;
      box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
      padding: 30px;
    }
    .login-form h2 {
      margin: 0 0 15px;
    }
    .form-control, .login-btn {
      min-height: 38px;
      border-radius: 2px;
    }
    .input-group-addon .fa {
      font-size: 18px;
    }
    .login-btn {
      font-size: 15px;
      font-weight: bold;
    }
    .social-btn .btn {
      border: none;
      margin: 10px 3px 0;
      opacity: 1;
    }
    .social-btn .btn:hover {
      opacity: 0.9;
    }
    .social-btn .btn-primary {
      background: #507cc0;
    }
    .social-btn .btn-info {
      background: #64ccf1;
    }
    .social-btn .btn-danger {
      background: #df4930;
    }
    .or-seperator {
      margin-top: 20px;
      text-align: center;
      border-top: 1px solid #ccc;
    }
    .or-seperator i {
      padding: 0 10px;
      background: #f7f7f7;
      position: relative;
      top: -11px;
      z-index: 1;
    }   
  </style>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top navbar-size-large navbar-size-xlarge paper-shadow" data-z="0" data-animated role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="navbar-brand navbar-brand-logo">
            <a class="svg" href="#">
              <!-- Website logo begins --- svg data -->
              <svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100%" height="110%" viewBox="0 0 5120 3320" preserveAspectRatio="xMidYMid meet">
                <g id="layer101" fill="#050505" stroke="none">
                  <path d="M2673 2376 c-60 -19 -96 -48 -122 -101 -65 -129 -18 -296 97 -347 65 -29 164 -22 220 14 57 38 96 120 95 202 -1 121 -68 211 -173 235 -56 13 -65 13 -117 -3z m125 -80 c66 -34 95 -168 54 -246 -51 -97 -184 -87 -228 17 -59 138 57 290 174 229z"/>
                  <path d="M3494 2383 c-12 -2 -34 -18 -50 -34 l-29 -30 -5 -162 -5 -162 -33 -3 c-32 -3 -33 -5 -30 -40 3 -34 6 -37 36 -40 31 -3 32 -4 32 -53 0 -44 3 -51 26 -59 48 -19 53 -14 56 52 l3 61 55 1 55 1 3 38 3 37 -60 0 -61 0 0 130 c0 170 6 183 90 192 18 2 26 10 28 27 2 13 0 27 -5 31 -11 10 -82 19 -109 13z"/>
                  <path d="M3745 2375 c-65 -23 -95 -83 -81 -160 14 -74 86 -121 203 -134 55 -6 58 -7 55 -31 -8 -62 -83 -86 -171 -55 -41 14 -42 14 -52 -12 -18 -47 33 -73 147 -73 71 0 115 24 148 80 19 31 21 55 24 213 l4 178 -38 -3 c-31 -2 -39 -8 -44 -26 l-5 -24 -25 20 c-23 18 -91 42 -115 42 -5 -1 -28 -7 -50 -15z m135 -78 c33 -25 50 -62 50 -106 l0 -44 -54 6 c-78 8 -114 29 -122 72 -10 54 15 85 69 85 23 0 49 -6 57 -13z"/>
                  <path d="M2087 2374 c-10 -10 -9 -622 1 -628 4 -2 44 -8 88 -11 147 -13 240 22 282 105 27 54 28 111 3 165 -38 82 -114 125 -222 125 l-58 0 -3 123 -3 122 -40 3 c-23 2 -44 0 -48 -4z m245 -340 c42 -22 63 -77 52 -133 -13 -62 -45 -84 -134 -89 l-70 -4 0 120 c0 87 3 122 13 126 20 9 108 -4 139 -20z"/>
                  <path d="M3067 2374 c-4 -4 -7 -108 -7 -231 0 -243 0 -243 55 -229 21 5 25 12 25 44 l1 37 15 -27 c18 -34 62 -58 104 -58 30 0 31 1 28 42 -3 41 -5 43 -40 49 -80 13 -92 41 -98 224 l-5 150 -35 3 c-20 2 -39 0 -43 -4z"/>
                  <path d="M4142 2043 l3 -338 40 0 40 0 0 335 0 335 -43 3 -42 3 2 -338z"/>
                  <path d="M1754 1813 c10 -183 8 -178 66 -179 27 0 51 4 53 10 1 6 1 59 -1 119 -4 106 -4 107 -29 107 -14 0 -37 13 -55 30 -16 17 -32 30 -35 30 -3 0 -3 -53 1 -117z"/>
                  <path d="M405 1618 c-3 -7 -6 -46 -7 -87 l-3 -74 -140 -84 c-77 -47 -161 -95 -187 -109 -27 -13 -48 -30 -48 -37 0 -7 51 -39 113 -72 61 -32 128 -67 147 -78 75 -41 432 -234 574 -308 82 -44 158 -79 170 -79 12 0 30 6 41 14 11 7 67 38 125 68 58 31 123 66 145 78 22 13 112 61 200 108 88 46 194 104 235 127 41 23 109 59 150 79 74 37 108 62 99 70 -2 2 -43 25 -91 51 l-88 47 0 93 c0 70 4 96 15 105 35 29 5 100 -42 100 -44 0 -71 -72 -38 -100 11 -9 15 -33 15 -86 0 -41 -3 -74 -6 -74 -4 0 -40 21 -80 46 l-74 46 0 85 c0 84 0 85 -22 79 -185 -52 -306 -66 -586 -66 -256 0 -379 11 -510 45 -110 29 -101 28 -107 13z m270 -398 c124 -32 323 -45 473 -31 164 14 277 42 371 91 82 43 104 43 53 0 -60 -50 -162 -92 -287 -117 -109 -23 -136 -24 -305 -20 -203 5 -296 22 -412 75 -62 28 -128 76 -128 92 0 5 35 -9 78 -31 42 -21 113 -48 157 -59z"/>
                </g>
                <g id="layer102" fill="#3baeda" stroke="none">
                  <path d="M867 2384 c-205 -49 -397 -242 -451 -450 -20 -79 -22 -267 -3 -283 18 -14 62 -19 61 -6 -1 6 -4 29 -8 53 l-6 42 108 0 109 0 9 -77 9 -78 33 -3 c32 -3 34 -2 28 25 -3 15 -8 52 -11 81 l-7 52 126 0 126 0 0 -86 0 -85 33 3 32 3 3 83 3 82 120 0 120 0 -7 -80 c-6 -74 -5 -80 12 -80 35 0 44 15 51 85 l8 70 104 3 104 3 -7 -57 -6 -56 27 7 c16 3 32 11 37 16 18 17 19 180 2 259 -25 120 -76 211 -170 305 -92 92 -166 136 -282 165 -91 24 -221 25 -307 4z m123 -169 l0 -115 -96 0 c-108 0 -105 -3 -63 82 33 64 118 148 152 148 4 0 7 -52 7 -115z m155 52 c35 -37 69 -85 82 -115 l22 -52 -95 0 -94 0 0 115 c0 83 3 115 12 115 7 0 39 -28 73 -63z m-327 16 c-18 -20 -72 -126 -83 -160 -6 -21 -12 -23 -86 -23 -43 0 -79 4 -79 8 0 4 26 33 58 65 68 67 241 168 190 110z m579 -97 c30 -27 58 -57 64 -67 9 -18 5 -19 -68 -19 l-78 0 -24 58 c-14 31 -35 74 -48 94 -13 21 -23 40 -23 43 0 15 129 -65 177 -109z m-694 -171 c-2 -11 -8 -62 -15 -112 l-12 -93 -109 0 -109 0 7 43 c9 52 43 158 57 175 8 9 36 12 97 10 79 -3 86 -5 84 -23z m285 -92 l3 -113 -127 0 -126 0 7 53 c8 65 26 159 32 170 2 4 50 6 106 5 l102 -3 3 -112z m281 99 c9 -17 31 -153 31 -193 0 -18 -8 -19 -120 -19 l-120 0 0 115 0 115 100 0 c85 0 101 -3 109 -18z m255 -10 c15 -29 40 -116 50 -169 l6 -33 -109 0 -108 0 -6 68 c-3 37 -9 88 -13 115 l-7 47 86 0 c84 0 87 -1 101 -28z"/>
                  <path d="M2116 1645 c-58 -16 -67 -28 -54 -66 12 -34 12 -34 68 -14 89 31 184 13 208 -40 31 -68 1 -113 -113 -165 -90 -42 -154 -102 -157 -148 -7 -131 69 -205 210 -203 118 2 144 17 123 73 l-9 25 -60 -15 c-110 -27 -184 18 -168 101 8 42 40 67 138 106 128 52 175 175 106 277 -47 69 -181 101 -292 69z"/>
                  <path d="M2614 1641 c-18 -11 -36 -25 -40 -33 -5 -7 -11 -87 -14 -178 l-5 -165 -32 -3 c-30 -3 -33 -6 -33 -38 0 -32 2 -34 35 -34 l35 0 0 -54 0 -54 40 -10 c21 -5 42 -7 45 -4 3 3 5 32 5 64 l0 58 55 0 55 0 0 35 0 35 -55 0 -55 0 0 148 c0 102 4 152 12 160 7 7 29 12 50 12 37 0 38 1 38 34 0 22 -6 36 -16 40 -31 12 -90 6 -120 -13z"/>
                  <path d="M2935 1646 c-79 -35 -95 -85 -95 -291 l0 -165 44 0 45 0 3 171 3 171 28 24 c17 15 41 24 60 24 41 0 95 -33 102 -62 3 -13 6 -90 8 -173 l2 -150 48 -3 47 -3 0 230 0 231 -40 0 c-38 0 -40 -1 -40 -32 l0 -31 -23 21 c-51 48 -133 64 -192 38z"/>
                  <path d="M3450 1644 c-85 -37 -125 -106 -125 -219 0 -70 4 -87 29 -132 61 -111 192 -147 276 -77 l30 26 0 -131 0 -131 45 0 45 0 2 320 c0 176 1 326 2 333 1 7 -15 13 -41 15 l-43 3 0 -38 0 -37 -16 23 c-21 30 -89 61 -134 60 -19 0 -51 -7 -70 -15z m150 -79 c45 -23 60 -62 60 -156 0 -79 -1 -82 -34 -115 -29 -29 -41 -34 -81 -34 -25 0 -55 5 -67 11 -51 27 -76 173 -42 245 28 60 102 81 164 49z"/>
                  <path d="M3990 1648 c-53 -15 -100 -56 -123 -107 -25 -56 -28 -168 -5 -221 48 -113 164 -167 265 -125 73 31 112 91 120 187 l6 58 -162 0 c-178 0 -174 -1 -147 64 29 69 109 99 206 76 28 -7 53 -10 56 -7 3 2 6 17 7 33 2 24 -3 29 -38 40 -48 15 -137 16 -185 2z m166 -310 c-8 -43 -57 -88 -97 -88 -58 0 -94 28 -119 94 l-10 26 116 0 117 0 -7 -32z"/>
                  <path d="M4945 1650 c-11 -4 -31 -20 -45 -35 -24 -26 -25 -32 -28 -191 l-3 -164 -35 0 c-32 0 -34 -2 -34 -35 0 -33 2 -35 35 -35 l35 0 0 -54 0 -54 40 -10 c21 -5 42 -7 45 -4 3 3 5 31 5 63 l0 58 58 3 c56 3 57 3 60 36 l3 32 -60 0 -61 0 0 144 c0 165 5 176 71 176 38 0 39 1 39 34 0 26 -5 35 -22 40 -31 8 -79 6 -103 -4z"/>
                  <path d="M4340 1420 l0 -230 40 0 c39 0 40 1 40 36 l0 37 20 -26 c28 -35 100 -61 152 -54 51 7 86 32 115 83 21 36 23 51 23 212 l0 172 -45 0 -45 0 0 -150 c0 -161 -10 -209 -48 -229 -51 -27 -120 -2 -146 53 -12 27 -16 66 -16 180 l0 146 -45 0 -45 0 0 -230z"/>
                </g>
              </svg>
              <!-- website logo - svg ENDS -->
            </a>
          </div>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
      
        <!-- /.navbar-collapse -->
      </div>
    </div>

    <div>
      <br><br><br>
    </div>

    <!-- LOGIN FORM BEGINS -->
    <div class="login-form">
      <form action="Adminlogin" method="post">
        <h2 class="text-center">Sign in</h2>   
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" name="username" placeholder="Username" required="required">       
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-lock"></i></span>
              <input type="password" class="form-control" name="password" placeholder="Password" required="required">       
          </div>
        </div>        
        <div class="form-group">
          <button type="submit" class="btn btn-primary login-btn btn-block">Sign in</button>
        </div>
        
       
      </form>
     
    </div>
    <!-- LOGIN FORM ENDS -->

    <!-- Footer -->
    <footer class="footer">
      &copy;  2020<strong> Student Portal</strong> - Developed by PSV (MCA)
    </footer>
    <!-- // Footer -->

    <!-- Inline Script for colors and config objects; used by various external scripts; -->
    <script>
      var colors = {
        "danger-color": "#e74c3c",
        "success-color": "#81b53e",
        "warning-color": "#f0ad4e",
        "inverse-color": "#2c3e50",
        "info-color": "#2d7cb5",
        "default-color": "#6e7882",
        "default-light-color": "#cfd9db",
        "purple-color": "#9D8AC7",
        "mustard-color": "#d4d171",
        "lightred-color": "#e15258",
        "body-bg": "#f6f6f6"
      };
      var config = {
        theme: "html",
        skins: {
          "default": {
            "primary-color": "#42a5f5"
          }
        }
      };
    </script>

    <script src="js/vendor/all.js"></script>
    <script src="js/app/app.js"></script>
  </body>
</html>
