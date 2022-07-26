package servlet_admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import scopedata.Account;

/**
 * Servlet implementation class a_co_delete_result
 */
@WebServlet("/a_co_delete_result")
public class a_co_delete_result extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account account = new Account("管理者","taiyu.o","小笠原太優");
		HttpSession session = request.getSession();
		session.setAttribute("account",account);
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/admin/a_co_delete_result.jsp");
		dispatcher.forward(request, response);
	}

}
