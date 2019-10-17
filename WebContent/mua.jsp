<%@page import="bean.giohangBean"%>
<%@page import="bo.giohangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sachtonghop.vn</title>
</head>
<body>
	<%
		String masach=request.getParameter("ms");
		String tensach=request.getParameter("ms");
		String tacgia=request.getParameter("ms");
		String giatam=request.getParameter("ms");
		if(giatam!=null){
			long gia=Long.parseLong(giatam);
			giohangBo gh=null;
			//kiem tra xem da tao session gh chua
			if (session.getAttribute("gh")==null){
				// neu chua thi tao 1 session:gh
				gh= new giohangBo();
				session.setAttribute("gh", gh);
			}
			
			//b1: lay session: gh luu vao bien: gh
			gh=(giohangBo)session.getAttribute("gh");
			//b2: thay doi bien: goi ham them
			gh.Them (masach, tensach, tacgia, gia, 1);
			//b3: luu bien gh vao session: gh
			session.setAttribute("gh", gh);
			//b4: hien thi gio hang: gh
			//for(giohangBean g:gh.ds )
				//out.print(g.getTensach()+":"+g.getThanhtien()+"<hr>");
			response.sendRedirect("htgio.jsp");
	}
	%>
</body>
</html>