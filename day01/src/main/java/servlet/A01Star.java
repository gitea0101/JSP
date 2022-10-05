package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01Star
 */
@WebServlet("/A01Star")
public class A01Star extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01Star() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int stars = Integer.parseInt(request.getParameter("stars"));
		String color = request.getParameter("color");
		
		out.print("<html><body><table border>");
		for(int i=1; i < stars+1; i++) {
			if(i%2==0) {
				out.print("<tr bgcolor =" + color + ">");
				for(int j=1; j <i+1; j++) {
					out.print("<td> * </td>");
				}
			}else {
				out.print("<tr>");
				for(int j=1; j <i+1; j++) {
					out.print("<td> * </td>");
				}
			}
			
			out.print("</tr>");
		}
		out.print("</table></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
