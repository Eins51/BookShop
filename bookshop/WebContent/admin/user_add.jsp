<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Add Customer</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
	<jsp:include page="/admin/header.jsp"></jsp:include>
	
	<div class="container-fluid" style="padding:30px 120px">

		<div class="panel panel-default" style="width:70%">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title" style="height:20px"><h4><strong>Add a New User</strong></h4></div>
			</div>
			<br>
			<div class="panel-body">
				<div class="text-left">
					<div>
						<c:if test="${!empty failMsg }">
							<div class="alert alert-danger">${failMsg }</div>
						</c:if>
						<form class="form-horizontal" action="./user_add" method="post">
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">User Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="username" required="required" value="${u.username }" />
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="email" required="required" value="${u.email }"/>
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="password" required="required" value="${u.password }"/>
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Receiver Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="name" value="${u.name }"/>
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Phone</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="phone" value="${u.phone }" />
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Address</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="address" value="${u.address }"/>
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-10">
									<button type="submit" class="btn btn-success">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
					
</body>
</html>