<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Category List</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid" style="padding:10px 50px">
	
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title">Option</div>
			</div>
			<div class="panel-body">
				<div class="text-left">
					<div>
						<form class="form-inline" method="post" action="../admin/type_add">
							<input type="text" class="form-control" id="input_name" name="name" placeholder="Input a new category name" required="required" style="width: 500px">
							<input type="submit" class="btn btn-primary" value="Add category"/>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<br/>
		<c:if test="${!empty msg }">
			<div class="alert alert-success">${msg }</div>
		</c:if>
		<c:if test="${!empty failMsg }">
			<div class="alert alert-danger">${failMsg }</div>
		</c:if>
		<br>
	
		<table class="table table-bordered table-hover">
	
			<tr>
				<th width="5%">ID</th>
				<th width="10%">Category Name</th>
				<th width="10%">Option</th>
			</tr>
	
			<c:forEach items="${list }" var="t">
				<tr>
					<td><p>${t.id }</p></td>
					<td><p>${t.name }</p></td>
					<td>
						<a class="btn btn-primary" href="../admin/type_edit.jsp?id=${t.id }&name=${t.encodeName }">Modify</a>
						<a class="btn btn-danger" href="../admin/type_delete?id=${t.id }">Delete</a>
					</td>
				</tr>
			</c:forEach>	
	
		</table>
	
	</div>
</body>
</html>