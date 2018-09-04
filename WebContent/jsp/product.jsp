<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>myShop</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />
<script>
	function saveCart() {
		document.getElementById("cartForm").submit();
	}
</script>

</head>
<body>

	<div class="container header">
		<%@ include file="menu.jsp"%>
	</div>
	<div class="container productContent">
		<div class="span6">
			<div class="hotProductCategory">
				<c:forEach var="c" items="${sessionScope.cList }">
					<dl>
						<dt>
							<a
								href="${pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1"><c:out
									value="${c.cname}" /></a>
						</dt>
						<c:forEach var="cs" items="${c.categorySeconds}">
							<dd>
								<a
									href="${ pageContext.request.contextPath }/findByCsid/<c:out value="${cs.csid}/1"/>"><c:out
										value="${cs.csname}" /></a>
							</dd>
						</c:forEach>
					</dl>
				</c:forEach>
			</div>
		</div>

		<div class="span18 last">
			<div class="productImage">
				<a title="" style="outline-style: none; text-decoration: none;"
					id="zoom"
					rel="gallery">
					<div class="zoomPad">
						<img style="opacity: 1;" title="product image" class="medium"
							src="${ pageContext.request.contextPath }/<c:out value="${product.image }"/>" />
						<div
							style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;"
							class="zoomPup"></div>
						<div
							style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;"
							class="zoomWindow">
							<div style="width: 368px;" class="zoomWrapper">
								<div style="width: 100%; position: absolute; display: none;"
									class="zoomWrapperTitle"></div>
								<div style="width: 0%; height: 0px;" class="zoomWrapperImage">
									<img
										src="%E5%B0%9A%E9%83%BD%E6%AF%94%E6%8B%89%E5%A5%B3%E8%A3%852013%E5%A4%8F%E8%A3%85%E6%96%B0%E6%AC%BE%E8%95%BE%E4%B8%9D%E8%BF%9E%E8%A1%A3%E8%A3%99%20%E9%9F%A9%E7%89%88%E4%BF%AE%E8%BA%AB%E9%9B%AA%E7%BA%BA%E6%89%93%E5%BA%95%E8%A3%99%E5%AD%90%20%E6%98%A5%E6%AC%BE%20-%20Powered%20By%20Mango%20Team_files/6d53c211-2325-41ed-8696-d8fbceb1c199-large.jpg"
										style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;" />
								</div>
							</div>
						</div>
						<div
							style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;"
							class="zoomPreload">Loading zoom</div>
					</div>
				</a>
			</div>
			<!-- product information -->
			<div class="name">
				<c:out value="${product.pname }" />
			</div>
			<div class="sn">
				<div>
					Inquiries Number：
					<c:out value="${product.pid }" />
				</div>
			</div>
			<br>&nbsp</br>
			<div class="info">
				<dl>
					<dt>sale price:</dt>
					<dd>
						<strong>$<c:out value="${product.shop_price }" /></strong>
						</dd>
						<dt>
						 price：</dt>
						<dd>
						<del>
							$
							<c:out value="${product.market_price }" />
						</del>
					</dd>
				</dl>
				<dl>
					<dt>sale:</dt>
					<dd>
						<a target="_blank" title="Buy limit (2016-12-08 ~ 2017-01-09)">Buy limit</a>
					</dd>					
				</dl>
			</div>
			<br>&nbsp</br>
			<br>&nbsp</br>
			<form id="cartForm"
				action="${ pageContext.request.contextPath }/addCart"
				method="post">
				<input type="hidden" name="pid"
					value="<c:out value="${product.pid }"/>" />
				<div class="action">
					<dl class="quantity">
						<dt>Buy:</dt>
						<dd>
							<input id="count" name="count" value="1" maxlength="4"
								onpaste="return false;" type="text" />
						</dd>
					</dl>

					<div class="buy">
						<input id="addCart" class="addCart" value="addCart" type="button"
							onclick="saveCart()" />
					</div>
				</div>
			</form>
			<div id="bar" class="bar">
				<ul>
					<li id="introductionTab"><a href="#introduction">Product Information</a></li>
				</ul>
			</div>
			<div id="introduction" name="introduction" class="introduction">
				<div class="title">
					<!-- product information -->
					<strong><c:out value="${product.pdesc }" /></strong>
				</div>
				<%-- <div>
					<!-- product images -->
					<img
						src="${pageContext.request.contextPath }/<c:out value="${product.image }"/>" />
				</div> --%>
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