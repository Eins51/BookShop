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
		<div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 50px; margin-top: 5%; margin-bottom:5%">
			<div class="single-grids">				
				<div class="col-md-3 single-grid">		
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

				<div class="col-md-6 single-grid simpleCart_shelfItem">		
					<h3 style="font-weight: bold;">${g.name}</h3>
					<div class="tag">
						<p>Category: <a href="./goods_list?typeid=${g.type.id}">${g.type.name}</a></p>
					</div>
					<br>
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

				<div class="col-md-3 single-grid1">
					<br>
					<h4>Book Category</h4>
					
					<ul style="margin-left: 30px">
                        			<li style="color: #000000"><a href="./goods_list">All Books</a></li>
                        			<c:forEach items="${typeList}" var="t">
                            				<li><a href="./goods_list?typeid=${t.id}">${t.name}</a></li>
                        			</c:forEach>
					</ul>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			
			<div class="comment">Comment</div>
			<br>	
			
			<c:if test="${g.book_review1 != null}">		
				<div class="bookcomment">
					<div class="col-md-2 single-grid">
						<img src="images/p.png" class="img-responsive">
						<h4>Anonymous user</h4>
					</div>
					<p>${g.book_review1}</p>
					<h5>2021-12-20 19:30:29</h5>
				</div>
				<hr>
			</c:if>	
			
			<c:if test="${g.book_review2 != null}">		
				<div class="bookcomment">
					<div class="col-md-2 single-grid">
						<img src="images/p.png" class="img-responsive">
						<h4>Anonymous user</h4>
					</div>
					<p>${g.book_review2}</p>
					<h5>2022-01-20 09:54:49</h5>
				</div>
				<hr>
				</c:if>	

			<c:if test="${g.book_review3 != null}">		
				<div class="bookcomment">
					<div class="col-md-2 single-grid">
						<img src="images/p.png" class="img-responsive">
						<h4>Anonymous user</h4>
					</div>
					<p>${g.book_review3}</p>
					<h5>2022-02-24 16:35:26</h5>
				</div>
				<hr>
			</c:if>		

			<c:if test="${g.book_review4 != null}">		
				<div class="bookcomment">
					<div class="col-md-2 single-grid">
						<img src="images/p.png" class="img-responsive">
						<h4>Anonymous user</h4>
					</div>
					<p>${g.book_review4}</p>
					<h5>2022-03-17 23:46:49</h5>
				</div>
				<hr>
			</c:if>						
		</div>
	</div>
		
	

	<!--footer-->
    <jsp:include page="./footer.jsp"></jsp:include>
	<!--//footer-->


</body>
</html>
