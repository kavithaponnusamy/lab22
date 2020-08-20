<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Sheet</title>
</head>
<body>

	<div>

		<h3>Thanks for the review!</h3>
		<p>
			Your Name:
			<c:out value="${username2}" />
		</p>
		<p>
			Comment:
			<c:out value="${comment}" />
		</p>
		<p>
			Rating:
			<c:out value="${rating}" />
		</p>
		<a href="/">Back to Homepage</a>

	</div>

</body>
</html>