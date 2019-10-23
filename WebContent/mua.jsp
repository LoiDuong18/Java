
<%@page import="bo.giohangBo"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <% 
	 String masach = request.getParameter("ms");
	 String tensach = request.getParameter("ts");
	 String tacgia = request.getParameter("tg");
	 String g = request.getParameter("gia");
	 String amount = request.getParameter("numberAmount");
	 if( g !=null) {
		 long gia = Long.parseLong(g);
		 giohangBo gh = null;
		 	// kiểm tra xem đã tạo ra session chưa
		 		// -> nếu chưa thì tạo ra để lưu sách	
		 		if(session.getAttribute("gh") == null) {
		 			gh = new giohangBo();
		 			session.setAttribute("gh", gh);
		 		}
		 		// b1: Lấy session lưu vào biến gh
		 		gh = (giohangBo)session.getAttribute("gh");
		 		//b2 : Thay đổi gh gọi hàm them();
		 		gh.Them(masach, tensach, tacgia, gia, 1);
		 		//b3 : lưu biến vào session
		 		session.setAttribute("gh", gh);
		 		// Hiển thị giỏ hàng
		 		response.sendRedirect("htgio.jsp");
		 		
	 }	
	 %>
</body>
</html>