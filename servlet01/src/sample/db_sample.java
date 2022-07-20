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

import dao.SelectAdmin;
import dao.SelectUser;
import scopedata.Admin;
import scopedata.User;

@WebServlet("/db_sample")
public class db_sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		SelectUser selectuser = new SelectUser();
		List<User> ulist = selectuser.selectAll();
		session.setAttribute("uList", ulist);

		SelectAdmin selectadmin = new SelectAdmin();
		List<Admin> alist = selectadmin.selectAll();
		session.setAttribute("aList", alist);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/sample/db_sample.jsp");
		dispatcher.forward(request, response);
	}
}
