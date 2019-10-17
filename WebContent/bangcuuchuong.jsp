<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>bang cuu chuong</title>
<link rel="styleesheet" type="text/css" href="style.css"></link>
</head>
<body>
	<div>
		<table>
		<%for(int i=1; i<=9 ;i++){%>
			<tr>
			<%for(int j=1; j<=9 ;j++){%>
				<td><%=i%> x <%=j%> = <%=i*j%></td>
			<%}%>
			</tr>
		<%}%>
		</table>
	</div>

</body>
</html>