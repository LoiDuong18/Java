<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/action_page.php">
  		<div class="form-group">
    		<label for="email">username:</label>
    			<input type="email" class="form-control" id="email">
  		</div>
  		<div class="form-group">
    		<label for="pwd">Password:</label>
    			<input type="password" class="form-control" id="pwd">
  		</div>
  		<div class="checkbox">
    		<label><input type="checkbox"> Remember me</label>
  		</div>
  			<button type="submit" class="btn btn-default">login</button>
</form>
</body>
</html>