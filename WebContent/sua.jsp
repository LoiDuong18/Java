
<%@page import="bo.giohangBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
			String masach = request.getParameter("ms");
			long soluong = Long.parseLong(request.getParameter("sl"));
			out.print(soluong);
			giohangBo gh = null;
			if(session.getAttribute("gh") == null) {
	 			gh = new giohangBo();
	 			session.setAttribute("gh", gh);
	 		}
	 		// b1: Lấy session lưu vào biến gh
	 		gh = (giohangBo)session.getAttribute("gh");
	 		//b2 : Thay đổi gh gọi hàm them();
	 		gh.Sua(masach, soluong);
	 		//b3 : lưu biến vào session
	 		session.setAttribute("gh", gh);
	 		// Hiển thị giỏ hàng
	 		
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		response.sendRedirect("htgio.jsp");
	%>
</body>
</html>