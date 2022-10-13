package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;


@WebServlet("/allMember")
public class allMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		RequestDispatcher dispt = request.getRequestDispatcher("allMemberList.jsp");
		// DB 연결 
		dao.getConnection();
		// memberList에 Data 저장, ArrayList<MemberVO> 타입 
		request.setAttribute("memberList", dao.allSelect());
		dao.getClose();
		dispt.forward(request, response);
		
	}

}
