package servlet_admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.YearDAO;
import scopedata.Account;
import scopedata.Year;

/**
 * Servlet implementation class a_co_entry_confirm
 */
@WebServlet("/a_co_entry_confirm")
public class a_co_entry_confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account account = new Account("管理者","taiyu.o","小笠原太優");
		HttpSession session = request.getSession();
		session.setAttribute("account",account);

		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		session.setAttribute("name",name);

		String year_id = request.getParameter("year");
		YearDAO ydao = new YearDAO();
		Year year = ydao.select(year_id);
		System.out.println(year.getName());
		session.setAttribute("year",year.getName());

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/admin/a_co_entry_confirm.jsp");
		dispatcher.forward(request, response);
	}

}
