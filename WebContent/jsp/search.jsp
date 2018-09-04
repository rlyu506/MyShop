<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <div class="serach" style="text-align:center;padding:10px 0px;width:948px;height:auto;margin:0 auto;border:1px solid #ccc;">
          <form action="${pageContext.request.contextPath }/searchProduct" method="get">
	             <input type="text" name="search" class="sear" />
	            <input type="submit" value="search"/>
            </form>
    </div>
	<div class="container index">
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
				<div class="title">
					<strong>products by search</strong>
					<!-- <a  target="_blank"></a> -->
				</div>
				<ul class="tab">
					<li class="current"><a href="#" target="_blank"></a></li>
					<li><a target="_blank"></a></li>
					<li><a target="_blank"></a></li>
				</ul>

				<ul class="tabContent" style="display: block;">
					<c:forEach var="p" items="${pList}">
						<li><a
							href="${pageContext.request.contextPath }/findByPid/<c:out value="${p.pid}"/>"
							target="_blank"> <img
								src="${pageContext.request.contextPath}/<c:out value="${p.image }"/>"
								style="display: block;" /></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="container footer">
		<div class="span24">
			<div class="copyright"> web design by huizhe wang || 001614841 || 6220 Final Project</div>
		</div>
	</div>
</body>
</html>