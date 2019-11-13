package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mtcontroller
 */
@WebServlet("/mtcontroller")
public class mtcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mtcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String aa= request.getParameter("txta");
		String bb= request.getParameter("txtb");
		String nut=request.getParameter("but1");
		long a, b, kq=0;
		if (aa!=null && bb!=null){
			a=Long.parseLong(aa);
			b=Long.parseLong(bb);
		
				if (nut.equals("+")) kq=a+b;
				if (nut.equals("-")) kq=a-b;
				if (nut.equals("*")) kq=a*b;
				if (nut.equals("/"))
					if(b==0)
						out.print("<script>alert('bo tay');</script>");
					else
						kq=a/b;
			}
			
			RequestDispatcher rd=
					request.getRequestDispatcher("maytinh.jsp");
					 rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
