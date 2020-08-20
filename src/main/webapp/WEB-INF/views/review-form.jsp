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

			<p>
				Your Name <input type="text" name="username1" required
					pattern="[A-Za-z]+" />
			</p>
			<p>Comment</p>

			<textarea name="comment" required pattern="[A-Za-z]+" minlength="5"
				id="comment"></textarea>

			<p>Rating</p>
			<INPUT TYPE="radio" name="rating" value="5" />5 (best)- <INPUT
				TYPE="radio" NAME="rating" VALUE="4" />4- <INPUT TYPE="radio"
				NAME="rating" VALUE="3" />3- <INPUT TYPE="radio" NAME="rating"
				VALUE="2" />2- <INPUT TYPE="radio" NAME="rating" VALUE="1" />1
			(worst) <input type="radio" name="rating" required pattern="[1-5]" />
			<p>
				<button type="submit">Submit</button>
				&nbsp;&nbsp;&nbsp;<a href="/">Never Mind</a>
		</form>



	</div>

</body>
</html>