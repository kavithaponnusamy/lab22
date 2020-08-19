<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>

		<h3>Your Pizza </h3>
		<p>Size: ${size}</p>
		<p> Toppings: ${toppings}</p>
		<p> Gluten-Free Crust: ${gluFree}</p>
		<p>Special Instructions: ${instructions}</p>
		<p>Price: ${price}</p>
		<a href="/custom-form">Build another pizza</a>       <a href="/index">Back to Homepage</a>
	</div>

</body>
</html>