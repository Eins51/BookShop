<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
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
	<jsp:include page="./header.jsp">
		<jsp:param name="flag" value="9"></jsp:param>
	</jsp:include>
	<!--//header-->

	
	<!--account-->
	<div class="account">

		<div class="container"  style="background-color: rgb(242, 242, 242, 0.8); margin-top: 5%; margin-bottom:5%">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>

				<form action="./user_login" method="post">
					<div class="register-top-grid">
						<h3  style="color:#333399; font-weight: bold">Login</h3>
						<br><br>
						<div class="input" >
							<span>User Name/Email <label style="color:red;">*</label></span> 
							<input type="text" name="ue" placeholder="Please input user name/email" required="required">
						</div>
						
						<div class="input">
							<span>Password <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="Please input your password" required="required">
						</div>

						<div class="clearfix"> </div>
					</div>
					<br>
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
	<jsp:include page="./footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>
