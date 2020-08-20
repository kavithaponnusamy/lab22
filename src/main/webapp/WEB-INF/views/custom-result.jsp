<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>

		<h3>Your Pizza</h3>
		<p>
			<Strong>Size: </Strong>
			<c:out value="${size}" />
		</p>
		<p>
			<Strong>Toppings:</Strong>
		</p>
		<ul>
			<c:forEach items="${toppings}" var="toppings">
				<li><c:out value="${toppings}" /></li>
			</c:forEach>
		</ul>
		<p>
			<Strong>Gluten-Free Crust:</Strong>
			<c:out value="${gluFree}" />
		</p>
		<p>
			<Strong>Special Instructions:</Strong>
			<c:out value="${instructions}" />
		</p>
		<p>
			<Strong>Price:</Strong>
			<c:out value="$${price}" />
		</p>
		<c:if test="${price>=15}">
			<p>Because your order meets the $15 minimum, you get FREE
				DELIVERY!</p>
		</c:if>
		<a href="/custom-form">Build another pizza</a> <a href="/">Back to
			Homepage</a>
	</div>

</body>
</html>