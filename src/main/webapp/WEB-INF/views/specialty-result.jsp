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

		<h3>
			<c:out value="${pizza}" />
		</h3>
		<p>
			Name:
			<c:out value="${pizza.name }" />
		</p>
		<p>
			Price:$
			<fmt:formatNumber  value="${pizza.price}" pattern="0.00" />
		</p>

		<a href="/">Back to Homepage</a>
	</div>

</body>
</html>