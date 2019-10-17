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
</head>
<body>
	<table align="left" width="1000px">

		<%
					sachBo sach= new sachBo();
					ArrayList<sachBean>  ds = sach.getsach();
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
</body>
</html>