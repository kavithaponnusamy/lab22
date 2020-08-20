<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <jsp:useBean id="date" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC's Pizza</title>
</head>
<body>
<div>
<h1>Welcome to MVC's Pizza</h1>
<p>
Today's Date: <fmt:formatDate value="${date}" pattern="EEEE, MMM dd, yyyy" />
<p></p>
<img src="/Paleo-Pizza.jpg" width="250px" height="250px"/>
<p></p>
<h3>Specialty Pizzas</h3>
<ul>
<c:forEach items="${list}" var="pizza">
<li><a href="/specialty-result?name=${pizza.name}&price=${pizza.price}">${pizza.name}</a></li>
</c:forEach>
</ul>
		<!--<ul>
<li><a href="/specialty-result?name=Anchovy Lover's&price=15">Anchovy Lover's</a></li>
<li><a href="/specialty-result?name=Paleo Pizza&price=10" >Paleo Pizza</a></li>
<li><a href="/specialty-result?name=Dessert Pizza&price=12" >Dessert Pizza</a></li>
</ul>-->
		<h3>Custom Pizza</h3>
<p></p>
<a href="/custom-form">Build your own!</a>
<p></p>
<h3>Leave a review</h3>
<p></p>
<a href="/review-form">Click here to leave a review.</a>
</div>

</body>
</html>