<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>myShop</title>
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
<div class="container header">
		<%@ include file="menu.jsp"%>
	</div>
	
		<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					 <div style="width:100%;height:200px;color:#666666;line-height:200px;font-size:40px;text-align:center"> 
					 
					   <c:if test="${notUser != null }">
			              Fail to active, No this user!
          </c:if>
          <c:if test="${activeSuccess != null }">
                          Active successfully, please 
            <a href="${pageContext.request.contextPath}/userLogin" style="font-size:38px;color:green">Sign in</a>                
          </c:if>
          <c:if test="${notLogin != null}">
                          You are not login, please  
           <a href="${pageContext.request.contextPath}/userLogin" style="font-size:38px;color:green">Sign in</a>
          </c:if>
					  
					  </div>
				</div>
			</div>
		</div>
	</div>
		<div class="container footer">
		<div class="span24">
			<div class="copyright"> 6220 Final Project</div>
		</div>
	</div>
</body>
</html>