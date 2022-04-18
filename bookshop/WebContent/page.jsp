<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div style='text-align:center;'>
    <h5 style='display:inline;'>Total ${p.totalCount } items &nbsp</h5>
    
    <a class='btn btn-info'   
    	<c:if test="${p.pageNumber==1 }">disabled</c:if>  
    	<c:if test="${p.pageNumber!=1 }">href="${param.url }?pageNumber=1${param.param }"</c:if>>
    	First page</a>

    <a class='btn btn-info' 
    	<c:if test="${p.pageNumber==1 }">disabled</c:if> 
    	<c:if test="${p.pageNumber!=1 }">href="${param.url }?pageNumber=${p.pageNumber-1}${param.param }"</c:if>>
    	<span class="glyphicon glyphicon-arrow-left"></span></a>

    <h4 style='display:inline;'>[${p.pageNumber }/${p.totalPage }]</h4>

    <a class='btn btn-info' 
    	<c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> 
    	<c:if test="${p.pageNumber!=p.totalPage }">href="${param.url }?pageNumber=${p.pageNumber+1}${param.param }"</c:if>>
    	<span class="glyphicon glyphicon-arrow-right"></span></a>

    <a class='btn btn-info' 
    	<c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> 
    	<c:if test="${p.pageNumber!=p.totalPage }">href="${param.url }?pageNumber=${p.totalPage}${param.param }"</c:if>>
    	Last page</a>
    &nbsp&nbsp&nbsp
    <input type='text' class='form-control' style='display:inline;width:40px;' value=''/>
    
    <a class='btn btn-info' 
    	href='javascript:void(0);' onclick='location.href="${param.url }?pageNumber="+(this.previousSibling.value)+"${param.param }"'>
    	GO</a>

</div>
