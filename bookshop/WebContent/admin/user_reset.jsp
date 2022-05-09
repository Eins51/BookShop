<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Password Reset</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>

<body>
	<jsp:include page="/admin/header.jsp"></jsp:include>
	
	<div class="container-fluid" style="padding:30px 120px">

		<div class="panel panel-default" style="width:70%">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title" style="height:20px"><h4><strong>Edit User Information</strong></h4></div>
			</div>
			<br>
			<div class="panel-body">
				<div class="text-left">
					<div>
						<form class="form-horizontal" action="../admin/user_reset" method="post">
							<input type="hidden" name="id" value="${param.id }">
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">User Name</label>
								<div class="col-sm-5">${param.username }</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-5">${param.email }</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="password" value="" required="required">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
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