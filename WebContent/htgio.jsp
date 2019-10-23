
<%@page import="bean.giohangBean"%>
<%@page import="bo.giohangBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gio Hang</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
<style type="text/css">
.quantity {
  position: relative;
  left :28px;
}
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button
{
  -webkit-appearance: none;
  margin: 0;
}
input[type=number]
{
  -moz-appearance: textfield;
}
.quantity input {
  width: 100px;
  height: 50px;
  line-height: 1.65;
  float: left;
  display: block;
  padding: 0;
  margin: 0;
  padding-left: 20px;
  border: 1px solid #eee;
}
.quantity input:focus {
  outline: 0;
}
.quantity-nav {
  float: left;
  position: relative;
  height: 50px;
}
.quantity-button {
  position: relative;
  cursor: pointer;
  border-left: 1px solid #eee;
  width: 35px;
  text-align: center;
  color: #333;
  font-size: 18px;
  font-family: "Trebuchet MS", Helvetica, sans-serif !important;
  line-height: 1.7;
  -webkit-transform: translateX(-100%);
  transform: translateX(-100%);
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  -o-user-select: none;
  user-select: none;
}
.quantity-button.quantity-up {
  position: absolute;
  height: 50%;
  top: 0;
  border-bottom: 1px solid #eee;
}
.quantity-button.quantity-down {
  position: absolute;
  bottom: -1px;
  height: 50%;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg mb-5 navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Sach Tong Hop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="htSach.jsp">Sach <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="htgio.jsp">Gio Hang</a>
      </li>
        <%if(session.getAttribute("un")!=null){ %>
	    <li class="nav-item">
	      <a class="nav-link" href="#"><%=session.getAttribute("un") %></a>
	    </li>
	    <%}else{ %>
	    <li class="nav-item">
	      <a class="nav-link" href="login.jsp"><i class="fas fa-user"></i> Login</a>
	    </li>
	    <%} %>
       <li class="nav-item">
        <a class="nav-link" href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
  </div>
</nav>
	<div class="container">
	<table class="table table-hover table-bordered">
	
  <thead class="thead-dark">
    <tr>
    	<th scope="col">Ma Sach</th>
      <th scope="col">Ten Sach</th>
      <th scope="col">Tac Gia</th>
      <th scope="col">Gia</th>
      <th style="text-align:center" scope="col">So Luong</th>
      <th scope="col">Thanh Tien</th>
      <th style="text-align:center" scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <%
		if(session.getAttribute("gh") !=null) {
			giohangBo gh=(giohangBo)session.getAttribute("gh");
			for(giohangBean g: gh.ds) {%>
    <tr>
    	<td><%=g.getMasach() %></td>
		<td><%=g.getTensach() %></td>
		<td><%=g.getTacgia() %></td>
		<td><%=g.getGia() %></td>
		<td> 
			<form action="sua.jsp?ms=<%=g.getMasach() %>" method="post">
				<div class="quantity">
  				<input type="number" min="1" name="sl" max="1000" step="1" value="<%=g.getSoluong() %>">
				</div>
			</form>
   		</td>
		<td><%=g.getThanhtien() %></td>
		<td style="text-align: center">
			<a href="xoa.jsp?ms=<%=g.getMasach() %>" class="btn btn-danger">Xoa</a>
		</td>
    </tr>
    	<% } %>
	<tr>
		<td colspan="6" style="color:red">
			Tong Tien : <% out.print(gh.Tong()); %>
		<td>
	</tr>
	
			
<% } %>
  </tbody>
</table>
</div>
	
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <script type="text/javascript">
  jQuery('<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>').insertAfter('.quantity input');
  jQuery('.quantity').each(function() {
    var spinner = jQuery(this),
      input = spinner.find('input[type="number"]'),
      btnUp = spinner.find('.quantity-up'),
      btnDown = spinner.find('.quantity-down'),
      min = input.attr('min'),
      max = input.attr('max');
    btnUp.click(function() {
      var oldValue = parseFloat(input.val());
      if (oldValue >= max) {
        var newVal = oldValue;
      } else {
        var newVal = oldValue + 1;
      }
      spinner.find("input").val(newVal);
      spinner.find("input").trigger("change");
    });
    btnDown.click(function() {
      var oldValue = parseFloat(input.val());
      if (oldValue <= min) {
        var newVal = oldValue;
      } else {
        var newVal = oldValue - 1;
      }
      spinner.find("input").val(newVal);
      spinner.find("input").trigger("change");
    });
  });
  </script>
</body>
</html>