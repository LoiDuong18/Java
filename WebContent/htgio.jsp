<%@page import="bean.giohangBean"%>
<%@page import="bo.giohangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" width='800' border='1'>
<%
	if(session.getAttribute("gh")!=null){
		giohangBo gh=(giohangBo)session.getAttribute("gh");
		for(giohangBean g:gh.ds){%>
		
		<td><%=g.getTensach() %></td>
		<td><%=g.getTacgia() %></td>
		<td><%=g.getGia() %></td>
		<td><%=g.getSoluong() %></td>
		
		<td><%=g.getThanhtien() %></td>
		</tr>
		<%} %>
</table>
<div align="right">Tong: <%=gh.Tong() %></div>
<%} %>
</body>
</html>