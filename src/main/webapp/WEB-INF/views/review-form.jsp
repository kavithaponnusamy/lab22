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

		<h3>Leave a Review</h3>

		<form action="/rev-result">
		
			<p>Your Name <input type="text" name="username1" /> </p>		
			<p>Comment</p>
			<textarea id="comment" name="comment" rows="4" cols="50"></textarea>			
			<p>Rating</p>
			<INPUT TYPE="radio" name="rating" value="5"/>5 (best)-
			<INPUT TYPE="radio" NAME="rating" VALUE="4"/>4-
			<INPUT TYPE="radio" NAME="rating" VALUE="3"/>3-
			<INPUT TYPE="radio" NAME="rating" VALUE="2"/>2-
			<INPUT TYPE="radio" NAME="rating" VALUE="1"/>1 (worst)
			<p>
			<button type="submit">Submit</button>  <a href="/index">Never Mind</a>

		</form>
	


	</div>

</body>
</html>