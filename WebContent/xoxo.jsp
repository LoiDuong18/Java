<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%!public String xoso(int x){
	Random r=new Random();
	int db=r.nextInt(x);
	if(db<(x/10))
	return "0"+String.valueOf(db);
	else return String.valueOf(db);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=3>
<tr>
<td>DB</td>

<td> <%=xoso(100000) %></td>
</tr>
<tr>
<td>G1</td>
<td><%=xoso(100000) %></td>
</tr>
<tr>
<td>G2</td>
<td><%=xoso(100000) %> <%=xoso(100000) %></td>
</tr>
<tr>
<td>G3</td>
<td><%=xoso(100000) %> <%=xoso(100000) %> <%=xoso(100000) %><br><%=xoso(100000) %> <%=xoso(100000) %> <%=xoso(100000) %></td>
</tr>
<tr>
<td>G4</td>
<td><%=xoso(10000) %> <%=xoso(10000) %> <%=xoso(10000) %> <%=xoso(10000) %></td>
</tr>
<tr>
<td>G5</td>
<td><%=xoso(10000) %> <%=xoso(10000) %> <%=xoso(10000) %><br><%=xoso(10000) %> <%=xoso(10000) %> <%=xoso(10000) %></td>
</tr>
<tr>
<td>G6</td>
<td><%=xoso(1000) %> <%=xoso(1000) %> <%=xoso(1000) %></td>
</tr>
<tr>
<td>G7</td>
<td><%=xoso(100) %> <%=xoso(100) %>     <%=xoso(100) %>     <%=xoso(100) %></td>
</tr>
</table>
</body>
</html>