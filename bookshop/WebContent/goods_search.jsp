<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>


<jsp:include page="./header.jsp">
	<jsp:param value="8" name="flag"/>
</jsp:include>


<!--products-->
<div class="products">
	<div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 50px">

		<h2 style="color: #333399; text-shadow: 2px 2px 5px #fff; font: italic 3em Georgia, serif">Results for ‘${param.keyword }’</h2>

		<div class="col-md-12 product-model-sec">

			<c:forEach items="${p.list }" var="g">
				<div class="product-grid">
					<a href="${pageContext.request.contextPath }/goods_detail?id=${g.id}">
						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="${pageContext.request.contextPath }/${g.cover}" class="img-responsive" alt="${g.name }" width="240" height="240">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">
									<button>Details</button>
								</h4>
							</div>
						</div>
					</a>
					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4 class="book-name">${g.name }</h4>
							<span class="item_price">$ ${g.price }</span>
							<input type="button" class="item_add items" value="Add to cart" onclick="buy(${g.id})">
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</c:forEach>

			<div class="clearfix"> </div>
		</div>
		<div>
			<jsp:include page="./page.jsp">
				<jsp:param name="url" value="./goods_search"></jsp:param>
				<jsp:param name="param" value="&keyword=${keyword}"></jsp:param>
			</jsp:include>
			<br>
		</div>
	</div>
</div>
<!--//products-->

<jsp:include page="./footer.jsp"></jsp:include>

</body>
</html>
