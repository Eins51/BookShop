<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Add Item</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.css" />
</head>

<body>
	<jsp:include page="/admin/header.jsp"></jsp:include>
	
	<div class="container-fluid" style="padding:30px 120px">

		<div class="panel panel-default" style="width:70%">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title" style="height:20px"><h4><strong>Add a New Book</strong></h4></div>
			</div>
			<br>
			<div class="panel-body">
				<div class="text-left">
					<div>
						<form class="form-horizontal" action="./goods_add" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="name"  required="required">
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Price</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="price" >
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Introduction</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="intro" >
								</div>
							</div>
							<div class="form-group">
								<label for="input_name" class="col-sm-2 control-label">Store</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="input_name" name="stock" >
								</div>
							</div>
							<div class="form-group">
								<label for="input_file" class="col-sm-2 control-label">Picture</label>
								<div class="col-sm-6">
									<input type="file" name="cover"  id="input_file" required="required">Recommended Size: 500 * 500
								</div>
							</div>
							<div class="form-group">
								<label for="input_file" class="col-sm-2 control-label">Picture 1</label>
								<div class="col-sm-6">
									<input type="file" name="image1"  id="input_file" required="required">Recommended Size: 500 * 500
								</div>
							</div>
							<div class="form-group">
								<label for="input_file" class="col-sm-2 control-label">Picture 2</label>
								<div class="col-sm-6">
									<input type="file" name="image2"  id="input_file" required="required">Recommended Size: 500 * 500
								</div>
							</div>
							<div class="form-group">
								<label for="select_topic" class="col-sm-2 control-label">Category</label>
								<div class="col-sm-6">
									<select class="form-control" id="select_topic" name="typeid">
					
										<c:forEach items="${typeList }" var="t">
											<option value="${t.id }">${t.name }</option>
										</c:forEach>
					
					
									</select>
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