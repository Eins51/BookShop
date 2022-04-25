<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>User center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>


<body>

	<jsp:include page="./header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	
	<!--account-->
	<div class="account">
		<div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 30px; margin-top: 5%; margin-bottom:5%">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
					<div class="register-top-grid">
						<h3 style="color: #333399; font-weight: bold">Administrator&nbsp Center</h3>
						<hr>                                                                                                     
					</div>
														

					<form action="./user_changepwd" method="post">
						<br>
						<div class="input">
							<h4 style="margin-left:5%">Original password</h4>
							<input type="text" name="password" placeholder="Original Password" style="width:80%; height:35px; margin-left: 10%; margin-top: 10px"> 
						</div>
						<br><br>
						<div class="input">
							<h4 style="margin-left:5%">New password</h4>
							<input type="text" name="newPassword" placeholder="New Password" style="width:80%; height:35px; margin-left: 10%; margin-top: 10px"> 
						</div>
									
						<br>
						
						<div class="register-but text-center">
							<input type="submit" value="Submit" style="border-radius: 8px">
						</div>	
					</form>
					
					<hr>
				</div>							
			</div>						
		</div>

		<div class="clearfix"> </div>

	<!--//account-->

	


	<jsp:include page="./footer.jsp"></jsp:include>

	
</body>
</html>
