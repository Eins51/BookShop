<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Category Edit</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>

	<jsp:include page="/admin/header.jsp"></jsp:include>

	<div class="container-fluid" style="padding:90px 120px">
	<br><br>
		<div class="panel panel-default" style="width:70%">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title" style="height:20px"><h4><strong>Modify Category Name</strong></h4></div>
			</div>
			<br>
			<div class="panel-body">
				<div class="text-left">
					<div>
						<form class="form-horizontal" action="../admin/type_edit" method="post">
							<input type="hidden" name="id" value="${param.id }">
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label"><strong>Category Name</strong></label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="name" value="${param.name }" required="required" style="width:65%; margin-top:10px">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">Submit</button>
								</div>
							</div>
						</form>
						<span style="color:red;"></span>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>