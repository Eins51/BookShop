<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>User Center</title>
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
		<div class="container" style="background-color: rgb(242, 242, 242, 0.8); margin-top: 5%; margin-bottom:5%">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
				<div class="register-top-grid">
					<h3 style="font-weight: bold; ">User Center</h3>
						<br><hr>
 
 					<div class="panel panel-default">
						
						<ul class="nav nav-tabs" role="tablist">
    						<li role="presentation" class="active">
    							<a href="#home" role="tab" data-toggle="tab" style="font-weight: bold">Modify Receiving Info.</a>
    						</li>
    						<li role="presentation">
    							<a href="#security" role="tab" data-toggle="tab" style="font-weight: bold">Change Password</a>
    						</li>
						</ul>
					
						<div class="tab-content">	
															
							<div role="tabpanel" class="tab-pane active" id="home">					
								<form action="./user_changeaddress" method="post">
									<br>
									<div class="input">
										<span style="margin-left:5%">Receiver Name<label></label></span>
										<input type="text" name="name" value="${user.name }" placeholder="Receiver Name"> 
									</div>
									<div class="input">
										<span style="margin-left:5%">Phone</span>
										<input type="text" name="phone" value="${user.phone }" placeholder="Phone"> 
									</div>
									<div class="input">
										<span style="margin-left:5%">Address</span>
										<input type="text" name="address" value="${user.address }" placeholder="Address"> 
									</div>
									<br>
									<div class="register-but text-center">
									   <input type="submit" value="Submit" style="border-radius: 8px">
									</div>	
								</form>
							<hr>
							</div>
											
							<div role="tabpanel" class="tab-pane" id="security">
								<form action="./user_changepwd" method="post">
									<br>
									<div class="input">
										<span style="margin-left:5%">Original password</span>
										<input type="text" name="password" placeholder="Original Password" "> 
									</div>
									<div class="input">
										<span style="margin-left:5%">New password</span>
										<input type="text" name="newPassword" placeholder="New Password"> 
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
				</div>
				
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	


	<jsp:include page="./footer.jsp"></jsp:include>

	
</body>
</html>
