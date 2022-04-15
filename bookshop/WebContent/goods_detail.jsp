<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>Book Details</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/flexslider.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
	<script>
		$(function() {
		  $('.flexslider').flexslider({
			animation: "slide",
			controlNav: "thumbnails"
		  });
		});
	</script>
</head>
<body>
	 
	

	<!--header-->
    <jsp:include page="./header.jsp"></jsp:include>
	<!--//header-->

	
	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
						
						<ul class="slides">
							<li data-thumb="${g.cover}">
								<div class="thumb-image"> <img src="${g.cover}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${g.image1}">
								 <div class="thumb-image"> <img src="${g.image1}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${g.image2}">
							   <div class="thumb-image"> <img src="${g.image2}" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
				</div>	
				<div class="col-md-4 single-grid simpleCart_shelfItem">		
					<h3>${g.name}</h3>
					<div class="tag">
						<p>Category: <a href="goods.action?typeid=5">${g.type.name}</a></p>
					</div>
					<p>${g.intro}</p>
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">$ ${g.price}</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="btn_form">
						<a href="javascript:;" class="add-cart item_add" onclick="buy(${g.id})">Add to cart</a>
					</div>
				</div>
				<div class="col-md-4 single-grid1">
					<!-- <h2>Book category</h2> -->
					<ul>
                        <li><a  href="./goods_list">All</a></li>

                        <c:forEach items="${typeList}" var="t">
                            <li><a href="./goods_list?typeid=${t.id}">${t.name}</a></li>
                        </c:forEach>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	
	


	<!--footer-->
    <jsp:include page="./footer.jsp"></jsp:include>
	<!--//footer-->


</body>
</html>
