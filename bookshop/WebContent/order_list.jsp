<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<title>Individual Order</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>

<style>
.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%;
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
}
 

.modal-content {
    background-color: #fefefe;
    margin: 15% auto; 
    padding: 20px;
    border: 1px solid #888;
    width: 50%; 
}
 

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}
 
.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
</style>	
</head>
	

<body>

	
	<!--header-->
	<jsp:include page="./header.jsp">
		<jsp:param name="flag" value="5"></jsp:param>
	</jsp:include>
	<!--//header-->

	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container" style="background-color: rgb(242, 242, 242, 0.8); padding: 50px">		
			<h2>My order</h2>
			
			<table class="table table-bordered table-hover">

				<tr>
					<th width="7%">ID</th>
					<th width="10%">Total Price</th>
					<th width="20%">Details</th>
					<th width="20%">Receiving Information</th>
					<th width="10%">Order Status</th>
					<th width="10%">Payment</th>
					<th width="10%">Time</th>
					<th width="10%">Option</th>
				</tr>

					<c:forEach items="${orderList }" var="order">

						<tr>
							<td><p>${order.id }</p></td>
							<td><p>$ ${order.total }</p></td>

							<td>
								<c:forEach items="${order.itemList }" var="item">
									<p>${item.goodsName }(${item.price }) x ${item.amount }</p>
								</c:forEach>
							</td>
							<td>
								<p><strong>Receiver name:</strong> ${order.name }</p>
								<p><strong>Phone:</strong> ${order.phone }</p>
								<p><strong>Address:</strong> ${order.address }</p>
							</td>
							<td>
								<p>
									<c:if test="${order.status==2 }"><span style="color:red;">Paid</span></c:if>
									<c:if test="${order.status==3 }"><span style="color:orange;">Shipped</span></c:if>
									<c:if test="${order.status==4 }"><span style="color:green;">Completed</span></c:if>
									<c:if test="${order.status==5 }"><span style="color:blue;">Return</span></c:if>
									<c:if test="${order.status==6 }"><span style="color:brown;">Cancel</span></c:if>
								</p>
							</td>
							<td>
								<p>
									<c:if test="${order.paytype==1 }">WeChat</c:if>
									<c:if test="${order.paytype==2 }">Alipay</c:if>
									<c:if test="${order.paytype==3 }">Cash on delivery</c:if>
								</p>
							</td>

							<td><p>${order.datetime }</p></td>
							<td>
							<c:if test="${order.status==3 }">
						<button id="myBtn" class="btn btn-warning">Return</button>
						<div id="myModal" class="modal">
 
                      
                        <div class="modal-content">
                        <span class="close">&times;</span>
                           
    <form>
    <fieldset>
    <legend>Return method</legend>
    <input type="radio" name="method" value="1" >Return by shipment<br>
    <span><input type="radio" name="method" value="2" >Return on physical store
    <select name="store">
    <option value="1">Store1</option>
    <option value="2">Store2</option>
    <option value="3">Store3</option>
    </select>
    </span>
    </fieldset>
    </form>
    <br>
    <fieldset>
    <legend>Return reason</legend>
    <textarea cols="80"></textarea>
    </fieldset>
    
    
    <a class="btn btn-warning" href="./status_update?id=${order.id }&status=5">Submit</a>
                        </div>
 
                        </div>
					        </c:if>
					    <a class="btn btn-danger" href="./status_update?id=${order.id }&status=6">Cancel</a>
							</td>
						</tr>

					</c:forEach>
				</table>
		</div>
	</div>
	<!--//cart-items-->	
	
	<!--footer-->
	<jsp:include page="./footer.jsp"></jsp:include>
	<!--//footer-->
<script>
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");
var span = document.querySelector('.close');

btn.onclick = function() {
 modal.style.display = "block";
}

span.onclick = function() {
 modal.style.display = "none";
}

window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}

</script>

</body>
</html>
