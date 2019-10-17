<%@page import="bean.sachBean"%>
<%@page import="bo.sachBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>"WebContent/cuchuoi.jsp"
<body>
<table border=1 align=center width=600>
 <tr>
  <td>
   <%
   	sachBo sach=new sachBo();
   	for (sachBean s: sach.getsach()){%>
   	 <a href="htsach.jsp?ms=<%=s.getMasach()%>&tg=<%=s.getTacgia()%>&anh=<%=s.getAnh()%>">
   	   <%=s.getTensach() %> <hr> </a>
   	 <%} %>
  </td>
  <td>
  <%
   String ms= request.getParameter("ms");
   String tg= request.getParameter("tg");
   String anh= request.getParameter("anh");
   %>
   Thong tin cua sach co ma: <%=ms %> <br>
   <img src="<%=anh%>"> <br>
   <%=tg %>
  </td>
 <tr>
</table>
</body>
</html>