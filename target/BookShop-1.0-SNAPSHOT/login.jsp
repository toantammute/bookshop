<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BOOKSTORE ONLINE | Login</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <!--===============================================================================================-->
</head>
<body>
<%
  Cookie[] cookies = request.getCookies();
  String email = null;
  String password = null;

  if (cookies != null) {
    for (Cookie cookie : cookies) {
      if (cookie.getName().equals("email")) {
        email = cookie.getValue();
      } else if (cookie.getName().equals("password")) {
        password = cookie.getValue();
      }
    }
  }
  if(email == null) email = "";
  if(password == null) password = "";

// Tiếp tục xử lý tùy theo logic của ứng dụng

%>
<div class="limiter">
  <div class="container-login100" style="background-image: url('img/bg-01.jpg');">
    <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
      <form class="login100-form validate-form" method="post" action="login">
        <input type="hidden" name="action" value="login">
					<span class="login100-form-title p-b-49">
						Login
					</span>

        <div class="wrap-input100 validate-input m-b-23" data-validate = "Email is reauired">
          <span class="label-input100">Email</span>
          <input class="input100" type="email" name="email" placeholder="Type your email" value="<%=email%>">
          <span class="focus-input100" data-symbol="&#xf206;"></span>
        </div>

        <div class="wrap-input100 validate-input" data-validate="Password is required">
          <span class="label-input100">Password</span>
          <input class="input100" type="password" name="pass" placeholder="Type your password" value="<%=password%>">
          <span class="focus-input100" data-symbol="&#xf190;"></span>
        </div>

        <br>
        <input type="checkbox" name="cookie" placeholder="Type your password" id="cookie" value="checked" checked>
        <label for="cookie">Remember me</label>
        <br>
        <c:if test="${not empty wrongpassword}">
          <div class="text-right p-t-8 p-b-31">
            <p style="color: red"><span>*</span>${wrongpassword}</p>
          </div>
        </c:if>

        <br>

        <div class="container-login100-form-btn">
          <div class="wrap-login100-form-btn">
            <div class="login100-form-bgbtn"></div>
            <button class="login100-form-btn" type="submit">
              Login
            </button>
          </div>
        </div>

        <div class="txt1 text-center p-t-54 p-b-20">
          <a href="resetpassword.jsp" class="txt1">
            Forgot Password
          </a>
          or
          <a href="signup.jsp" class="txt1">
              Sign Up
            </a>
        </div>
      </form>
    </div>
  </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

</body>
</html>