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

		<h3>Build Your Own Pizza</h3>

		<form action="/cus-result">
			<label for "size">Size</label> 
				<select id="size" name="size">
				<option value="Small">Small</option>
				<option value="Medium">Medium</option>
				<option value="Large">Large</option>		
				</select>
			<p>How many toppings? <input type="number" name="toppings" /></p>
			<p>Special Instrutions(Optional)</p>
			<textarea id="instructions" name="instructions" rows="4" cols="50"></textarea>			
			<p>
			<input type="hidden" name = "gluFree" value="n" checked>
			<input type="checkbox" name = "gluFree" value="y">
			<label for="gluFree"> Gluten-Free Crust?($2.00 extra)</label></p>
			
			<p></p>
			<button type="submit">Calculate Price</button>  <a href="/index">Never Mind</a>

		</form>
	


	</div>

</body>
</html>