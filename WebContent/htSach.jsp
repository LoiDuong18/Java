<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachBean"%>
<%@page import="bo.sachBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sachtonghop.vn</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
</head>
<body>
		<% if(session.getAttribute("un") == null){
		 response.sendRedirect("login.jsp"); 
	} %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
	<table align="left" width="1000px">

		<%
					//sachBo sach= new sachBo();
					ArrayList<sachBean>  ds = (ArrayList<sachBean>)
							request.getAttribute("dssach");
							//sach.getsach();
					int ss = ds.size();
					for(int i= 0; i<ss; i++){
						sachBean s= ds.get(i);
 				%>
		<tr>
			<td>
				<img alt="" src='<%=s.getAnh() %>'><br>
				<%=s.getTensach() %><br>
				<%=s.getTacgia() %><br>
				<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img alt="" src="mua.jpg"></a>
			</td>
			<td>
				<%i++;
					if(i<ss){
						s=ds.get(i);
					
				%>
				<img alt="" src='<%=s.getAnh() %>'><br>
				<%=s.getTensach()%><br>
				<%=s.getTacgia() %><br>
				<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img alt="" src="mua.jpg"></a>
			</td>
			<%} %>
		</tr>
		<%} %>
	</table>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
	
</body>
</html>