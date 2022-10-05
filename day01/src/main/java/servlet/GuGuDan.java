package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuGuDan
 */
@WebServlet("/GuGuDan")
public class GuGuDan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuGuDan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int start = Integer.parseInt(request.getParameter("Start"));
		int end = Integer.parseInt(request.getParameter("End"));
		String color = request.getParameter("color");
		out.print("<html><head><title>구구 단</title></head>");
		out.print("<body>");
		out.print("<table border bgcolor=" + color + ">");
		
		for(int i=start; i < end+1; i++) {
			out.print("<tr>");
			for(int j=1; j < 10 ; j++) {
				out.print(String.format("<td> %d x %d = %d </td>", i,j,i*j));
			}
			out.print("</tr>");
		}

		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
