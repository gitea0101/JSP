package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Lab2Join
 */
@WebServlet("/Lab2Join")
public class Lab2Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String psw = request.getParameter("psw");
		String pswc = request.getParameter("pswc");
		
		String gender = request.getParameter("gender");
		String bt = request.getParameter("BloodType");
		String birth = request.getParameter("birth");
		
		String hobby[] = request.getParameterValues("hobby");
		String color = request.getParameter("color");
		
		String writes = request.getParameter("writes");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("아이디: " + id + "<br>");
		out.print("비밀번호: " + psw + "<br>");
		if(!psw.equals(pswc)) {
			out.print("비밀 번호가 일치 하지 않습니다.<br>");
		}
		out.print("성별: " + gender + "<br>");
		out.print("혈액형: " + bt.substring(0,bt.length()-1) + "<br>");
		out.print("생일: " + birth + "<br>");
		out.print("취미: ");
		if(hobby != null) {
			for(String i:hobby) {
				out.print(i + " ");
			}
		}
		out.print("<br>좋아하는 색: " + color + "<br>");
		out.print("<div style=\"width:100px; height:100px ;background:"+color+";\"></div>");
		out.print("남기고 싶은 말 :" + writes + "<br>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
