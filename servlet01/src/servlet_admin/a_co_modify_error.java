package servlet_admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DropdownMaker;
import scopedata.Account;
import scopedata.Dropdown;

/**
 * Servlet implementation class a_co_modify_error
 */
@WebServlet("/a_co_modify_error")
public class a_co_modify_error extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Account account = new Account("管理者","taiyu.o","小笠原太優");
		HttpSession session = request.getSession();
		session.setAttribute("account",account);
		DropdownMaker dropdownmaker = new DropdownMaker();
		Dropdown dropdown = dropdownmaker.getDropdown();
		session.setAttribute("dropdown",dropdown);
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/admin/a_co_modify_error.jsp");
		dispatcher.forward(request, response);
	}

}
