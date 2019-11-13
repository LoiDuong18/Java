<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
</head>
<body>
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Sach Tong Hop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="t1.jsp">Trang 1</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="t2.jsp">Trang 2</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
  </div>
</nav>
	<div class="col-lg-6" style="padding: 100px;">
		<form class="shadow" action="ktdncontroller?kt=1" method="post">
			<h3 class="text-center pt-4" style="color:red">Login</h3>
				<label class="ml-3" for="">Username</label>
		<div class="input-group mb-4">
        <div class="input-group-prepend 	">
          <div class="input-group-text ml-3"><i class="fas fa-user"></i></div>
        </div>
        <input type="text" class="form-control mr-3" name="txtun" id="inlineFormInputGroup" placeholder="Username">
      </div>
      <label class="ml-3" for="">Password</label>
				<div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text ml-3"><i class="fas fa-key"></i></div>
        </div>
        <input type="text" class="form-control mr-3" name="txtpass" id="inlineFormInputGroup" placeholder="Username">
      </div>
		<select class="custom-select w-50 ml-3 my-3">
			  <option value="1">Giáo viên</option>
			  <option value="2">Sinh Viên</option>
		</select>
		<br>
			<button type="submit" class="btn btn-primary ml-3 mb-3 w-25" name="login" value="login">Login</button>
		
		</form>
		<a href="ktdncontroller?kt=2"> goi len servlet </a>
		</div>
</body>
</html>