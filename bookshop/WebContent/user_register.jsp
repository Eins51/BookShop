<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="/header.jsp">
		<jsp:param name="flag" value="10"></jsp:param>
	</jsp:include>
	<!--//header-->


	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-danger">${msg }</div>
				</c:if>
				<form action="./user_rigister" method="post">
					<div class="register-top-grid">
						<h3 style="color:#333399;">Register</h3>
						<div class="input">
							<span>User Name <label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="Please input your user name" required="required">
						</div>
						<div class="input">
							<span>Email <label style="color:red;">*</label></span>
							<input type="text" name="email" placeholder="Please input your email" required="required">
						</div>
						<div class="input">
							<span>Password <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="Please input your password" required="required">
						</div>
						<div class="input">
							<span>Receiver Name<label></label></span>
							<input type="text" name="name" placeholder="Please input the receiver name">
						</div>
						<div class="input">
							<span>Phone<label></label></span>
							<input type="text" name="phone" placeholder="Please input phone">
						</div>
						<div class="input">
							<span>Address<label></label></span>
							<input type="text" name="address" placeholder="Please input address">
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="Submit" style="background:#99CCFF;border-color:#99CCFF;border-radius: 12px;">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	




	<!--footer-->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>
