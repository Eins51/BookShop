
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
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


<!--header-->
<jsp:include page="./header.jsp">
    <jsp:param name="flag" value="2"></jsp:param>
</jsp:include>
<!--//header-->


<!--products-->
<div class="products">
    <div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 50px">
    	
		<h2 style="color: #333399; text-shadow: 2px 2px 5px #fff; font: italic 3em Georgia, serif">
        	<c:choose>
        		<c:when test="${empty t}">All Books</c:when>
        		<c:otherwise>${t.name}</c:otherwise> 
        	</c:choose>
        </h2>

        <div class="col-md-12 product-model-sec" >
            <c:forEach items="${p.list}" var="g">
                <div class="product-grid">
                    <a href="./goods_detail?id=${g.id}">
                       
                        <div class="product-img b-link-stripe b-animate-go  thickbox">
                            <img src="${g.cover}" class="img-responsive" alt="${g.name}" width="240" height="240">
                            <div class="b-wrapper">
                                <h4 class="b-animate b-from-left  b-delay03">
                                    <button href="./goods_detail?id=${g.id}">Details</button>
                                </h4>
                            </div>
                        </div>
                    </a>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4 class="book-name">${g.name}</h4>
                            <span class="item_price">$ ${g.price}</span>
                            <input type="button" class="item_add items" value="Add to cart" onclick="buy(${g.id})">
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <jsp:include page="./page.jsp">
            <jsp:param name="url" value="./goods_list"></jsp:param>
            <jsp:param name="param" value="&typeid=${id}"></jsp:param>
        </jsp:include>
        </div>
    </div>
<!--//products-->



<!--footer-->
<jsp:include page="./footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>
