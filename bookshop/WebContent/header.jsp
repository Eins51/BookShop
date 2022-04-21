<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<div class="header navbar-default"> 

	<nav class="navbar navbar-default" role="navigation">         
            <div class="navbar-header navbar-inverse">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                
                	<a class="navbar-brand" href="./index"> &nbsp&nbsp
                	<img src="images/logo.jpg" alt ="BookShop" style="max-width: 180px; margin-top: -26px" ></a>
            </div>
            
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
                <ul class="nav navbar-nav">
                    <li>
                    	<a href="./index" <c:if test="${param.flag==1}">class="active"</c:if>>Home</a>
                    </li>
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle <c:if test="${param.flag==2}">active</c:if>" data-toggle="dropdown">Book Category<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">                            
                            <li>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4>Book Category</h4>                                        
                                        <ul class="multi-column-dropdown">
                                            <li><a class="list" href="./goods_list">All</a></li>
                                            <c:forEach items="${typeList}" var="t">
                                                <li><a class="list" href="./goods_list?typeid=${t.id}">${t.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
 
                    <c:choose><c:when test="${empty user }">
                        <li><a href="./user_register.jsp" <c:if test="${param.flag==10 }">class="active"</c:if>>Register</a></li>
                        <li><a href="./user_login.jsp" <c:if test="${param.flag==9 }">class="active"</c:if>>Login</a></li>
                    </c:when>
                    </c:choose>
                    
                    <c:if test="${!empty user && !user.isadmin }">
                        <li><a href="./order_list" <c:if test="${param.flag==5 }">class="active"</c:if>>Individual Order</a></li>
                        <li><a href="./user_center.jsp" <c:if test="${param.flag==4 }">class="active"</c:if>>User Center</a></li>
                        <li><a href="./user_logout" >Logout</a></li>
                   </c:if>
                   
                    <c:if test="${!empty user && user.isadmin }">
                        <li><a href="./admin_center.jsp" <c:if test="${param.flag==4 }">class="active"</c:if>>Admin Center</a></li>
                        <li><a href="./admin/index.jsp" target="_blank">Background Management</a></li>
                        <li><a href="./user_logout" >Logout</a></li>
                    </c:if>
                </ul>

	            <form action="./goods_search" class="navbar-form navbar-left">
		            <input type="text" class="form-control" name="keyword">
		            <button type="submit" style="margin-top:11px">	            
			            <span class="glyphicon glyphicon-search"></span>
		            </button>
	            </form>
       
            </div>
         </nav>
         <!--//navbar-header-->
        
        <div class="header-info navbar-inverse"> 
            <div class="header-right cart">
                <a href="goods_cart.jsp">
                    <span class="glyphicon glyphicon-shopping-cart <c:if test="${param.flag==8 }">active</c:if>" aria-hidden="true"><span class="card_num"><c:choose><c:when test="${empty order}">0</c:when><c:otherwise>${order.amount}</c:otherwise></c:choose></span></span>
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
</div>
<!--//header-->
