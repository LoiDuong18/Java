<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>haha</title>
</head>
<body>
<%
 	int n=Integer.parseInt(request.getParameter("txtn"));
 	//kiem tra xem da tao 1 session chua
 	if (session.getAttribute("ss")==null)//chua tao
 		session.setAttribute("ss", 0);// tao ra 1 bien session ss
 		// thao tac
 		// b1: gan session vao bien
 		int s=(int)session.getAttribute("ss");
 	//b2: thay doi bien
 	s=s+n;
 	//b3: luu bien vao session
 	session.setAttribute("ss", s);
 	out.print("tong: "+session.getAttribute("ss"));

%>
</body>
</html>