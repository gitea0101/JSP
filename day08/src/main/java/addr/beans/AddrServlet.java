package addr.beans;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addr/Addr")
public class AddrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AddrBean addr = new AddrBean();
		request.setCharacterEncoding("UTF-8");
		ServletContext ctx = getServletContext();
		RequestDispatcher dispt = request.getRequestDispatcher("addr_add.jsp");
		addr.setUsername(request.getParameter("username"));
		addr.setTel(request.getParameter("tel"));
		addr.setEmail(request.getParameter("email"));
		addr.setGender(request.getParameter("gender"));
		
		Object check = ctx.getAttribute("am");
		if(check == null) {
			AddrManager am = new AddrManager();
			am.add(addr);
			ctx.setAttribute("am", am);
		}else {
			AddrManager am = (AddrManager)ctx.getAttribute("am");
			am.add(addr);
			ctx.setAttribute("am", am);
		}
		dispt.forward(request, response);
	}

}
