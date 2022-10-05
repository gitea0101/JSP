package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ex03UserInfo
 */
@WebServlet("/userinfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String hobby[] = request.getParameterValues("hobby");
		// 출력 문서 인코딩 방식
		response.setContentType("text/html; charset=UTF-8");
		// 출력 스트림
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title></title></head><body>");
		out.print("직업: "+ job);
		out.print("<br>성별: "+ gender);
		out.print("<br>취미: ");
		for(int i=0; i<hobby.length;i++) {
			out.print(hobby[i]+" ");
		}
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
