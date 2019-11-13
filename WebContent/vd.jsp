<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%out.print(session.getAttribute("ss")); %> <hr>
<%
	long s =(long) request.getAttribute("gt1");
	String gt2 =(String)request.getAttribute("gt2");
	String []ds =(String[]) request.getAttribute("dsht");
%>
Gt1: <%=s %> <hr>
Gt2: <%=s %> <hr>
Danh sach ten: <hr>
<%for (String ht: ds){
	out.print(ht+ "<br>");
}
%>
</body>
</html>