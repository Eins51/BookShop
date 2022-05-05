<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Product List</title>
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
				<div class="text-left"><a class="btn btn-primary" href="../admin/goods_add.jsp">Add Item</a></div>
			</div>
		</div>
	
		<br>
	
		<ul role="tablist" class="nav nav-tabs">
			<li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="../admin/goods_list">All Books</a></li>
			<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="../admin/goods_list?type=1">Scroll Recommendation</a></li>
			<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="../admin/goods_list?type=2">Best Seller Recommendation</a></li>
			<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="../admin/goods_list?type=3">New Book Recommendation</a></li>
		</ul>		
	
		<br>
	
		<table class="table table-bordered table-hover">
	
			<tr>
				<th width="5%">ID</th>
				<th width="10%">Picture</th>
				<th width="13%">Book Name</th>
				<th width="20%">Introduction</th>
				<th width="7%">Price</th>
				<th width="10%">Category</th>
				<th width="25%">Option</th>
			</tr>
	
			<c:forEach items="${p.list }" var="g">
				<tr>
					<td><p>${g.id }</p></td>
					<td><p><a href="../goods_detail?id=${g.id}" target="_blank"><img src="../${g.cover}" width="100px" height="100px"></a></p></td>
					<td><p><a href="../goods_detail?id=${g.id}" target="_blank">${g.name}</a></p></td>
					<td><p>${g.intro}</p></td>
					<td><p>$ ${g.price}</p></td>
					<td><p>${g.type.name}</p></td>
					<td>
						<p>
							<c:choose>
								<c:when test="${g.isHot }">
									<a class="btn btn-info" href="../admin/goods_recommend?id=${g.id }&method=remove&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">Remove from Best Seller</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-primary" href="../admin/goods_recommend?id=${g.id }&method=add&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">Add to Best Seller</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${g.isNew }">
									<a class="btn btn-info" href="../admin/goods_recommend?id=${g.id }&method=remove&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">Remove from New Book</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-primary" href="../admin/goods_recommend?id=${g.id }&method=add&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">Add to New Book</a>
								</c:otherwise>
							</c:choose>
						</p>
						<p>
							<c:choose>
								<c:when test="${g.isScroll }">
									<a class="btn btn-info" href="../admin/goods_recommend?id=${g.id }&method=remove&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">Remove from Scroll</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-primary" href="../admin/goods_recommend?id=${g.id }&method=add&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">Add to Scroll</a>
								</c:otherwise>
							</c:choose>
						</p>
						<a class="btn btn-success" href="../admin/goods_editshow?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">Modify</a>
						<a class="btn btn-danger" href="../admin/goods_delete?id=${g.id }&pageNumber=${p.pageNumber}&type=${type}">Delete</a>
					</td>
				</tr>
			</c:forEach>
	
	
		</table>
	
		<br>
		<jsp:include page="/page.jsp">
			<jsp:param value="../admin/goods_list" name="url"/>
			<jsp:param value="&type=${type }" name="param"/>
		</jsp:include>
		<br>
	</div>
</body>
</html>