package sample;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SelectUser;
import scopedata.User;

@WebServlet("/db_sample")
public class db_sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SelectUser select = new SelectUser();
		List<User> dlist = select.selectAll();
		HttpSession session = request.getSession();
		session.setAttribute("UserList", dlist);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/sample/db_sample.jsp");
		dispatcher.forward(request, response);
	}
}
