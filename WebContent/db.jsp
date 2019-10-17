<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align='center' width='800'>
<tr>
<td>
<a href='db.jsp?k=ts'> Tin thoi su</a> <hr>
<a href='db.jsp?k=bd'> Tin bong da</a> <hr>
<a href='db.jsp?k=ct'> Tin chinh tri</a> <hr>
</td>
<td>
<%String ts=request.getParameter("k");
if(ts==null) out.print("Hay chon mot trang");
else
	if(ts.equals("ts"))
		out.print("ht trang thoi su");
	else
		if(ts.equals("bd"))
			out.print("ht trang bong da");
		else
			if(ts.equals("ct"))
				out.print("ht trang chinh tri");
%>
</td>
</table>

</body>
</html>