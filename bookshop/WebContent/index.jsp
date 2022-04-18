<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>


<body>

<!--header-->
<jsp:include page="./header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>


<!--banner-->
<div class="banner" >
    <div class="container">
        <h2 class="hdng" >Today's Special</h2>
        <br>
        <h2 style="color: #333399; text-shadow: 2px 2px 5px #fff; font: italic 4em Georgia, serif;"> 
        	<a href="./goods_detail?id=${scroll.id}">${scroll.name}</a><span></span></h2>
        <p></p>
        <a class="banner_a" href="javascript:;" onclick="buy(${scroll.id})" >Add to cart now !</a>
            
        <div class="banner-text" style="margin-top: -60px">
            <a href="./goods_detail?id=${scroll.id}">
			<div class="product-img b-link-stripe b-animate-go  thickbox">
				<img src="${scroll.cover}" alt="${scroll.name}" width="450" height="450" >
				<div class="b-wrapper">
					<h4 class="b-animate b-from-left  b-delay03">
						<button href="./goods_detail?id=${g.id}">Details</button>
					</h4>
				</div>
             </div>
            </a>
        </div>                          
    </div>
</div>


<!--gallery-->
<div class="gallery">

    <div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 50px">

		<h2 style="color: #333399; text-shadow: 2px 2px 5px #fff; font: italic 3em Georgia, serif">Best Seller</h2>        

        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="g">
                <div class="col-md-4 gallery-grid glry-two">
                    
                    <a href="./goods_detail?id=${g.id}">
                    	<img src="${g.cover}" class="img-responsive" alt="${g.name}" width="320" height="320"/>
					</a>                    
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="./goods_detail?id=${g.id}">Details</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">Add to cart</a>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <div class="galy-info">
                        <p>${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">$ ${g.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="clearfix"></div>

        <hr><hr style="background-color:#B36D61; height:1px;"><br>
  		
		<h2 style="color: #333399; text-shadow: 2px 2px 5px #fff; font: italic 3em Georgia, serif">New Books</h2>
        
        <div class="gallery-grids">
            <c:forEach items="${newList}" var="g">
                <div class="col-md-3 gallery-grid ">
                    <a href="./goods_detail?id=${g.id}">
                        <img src="${g.cover}" class="img-responsive" alt="${g.name}"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="./goods_detail?id=${g.id}">Details</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">Add to cart</a>
                        <div class="clearfix"> </div>
                    </div>
                    
                    <div class="galy-info">
                        <p>${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">$ ${g.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<!--//gallery-->



<!--footer-->
<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>
