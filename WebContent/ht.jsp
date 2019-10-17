<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String ts=request.getParameter("k");
out.print(ts);
if(ts.equals("ts"))
	out.print("ht trang thoi su");
else
	if(ts.equals("bd"))
		out.print("ht trang bong da");
	else
		if(ts.equals("ct"))
			out.print("ht trang chinh tri");
%>

</body>
</html>