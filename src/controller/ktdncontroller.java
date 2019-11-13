package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.sachBo;
import bo.sachBo;

/**
 * Servlet implementation class ktdncontroller
 */
@WebServlet("/ktdncontroller")
public class ktdncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdncontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		String un= request.getParameter("txtun");
		String pass= request.getParameter("txtpass");
		String kt = request.getParameter("kt");
		// Chay lan dau thi chuyen ve trang login.jsp
		if (kt==null) {
			RequestDispatcher rd =request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else
		{
			HttpSession session= request.getSession();
			session.setAttribute("un", un);
			
			try {
	        	 sachBo s= new sachBo();
		         request.setAttribute("dssach",s.getsach());	 
			} catch (Exception e) {
				e.printStackTrace();
			}     
			
			RequestDispatcher rd=
			request.getRequestDispatcher("htSach.jsp");
			 rd.forward(request, response);
			//out.print(un+":"+pass+":");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
