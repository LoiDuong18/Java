<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String un= request.getParameter("txtn");
if (!un.isEmpty()){
	session.setAttribute("un", un);
	response.sendRedirect("t1.jsp");
}else
	out.print("<script>alert('dang nhap sai');</script>");
%>

</body>
</html>