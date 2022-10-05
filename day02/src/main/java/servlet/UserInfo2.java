package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInfo2
 */
@WebServlet("/userinfo2")
public class UserInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		int age =Integer.parseInt(request.getParameter("age"));
		String food[] = request.getParameterValues("food");
		String gender = request.getParameter("gender");
		String interest[] = request.getParameterValues("interest");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		

		out.print("이름: " + name + "<br>");
		out.print("나이: " + age + String.format("(%d0대)", age/10) + "<br>");
		out.print("성별: " + gender + "<br>");
		out.print("좋아하는 음식: ");
		for(String i:food) {
			out.print( i + " ");
		}
		out.print("<br>관심 분야: ");
		for(int i=0;i<interest.length;i++) {
			out.print(interest[i] + " ");
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
