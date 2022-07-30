package servlet_user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyJoinDAO;
import scopedata.CompanyJoin;

@WebServlet("/u_co_list")
public class u_co_list extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//companyjoin
		CompanyJoinDAO selectcompanyjoin = new CompanyJoinDAO();
		List<CompanyJoin> cjlist = selectcompanyjoin.selectAll();
		HttpSession session = request.getSession();
		session.setAttribute("cjList", cjlist);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/user/u_co_list.jsp");
		dispatcher.forward(request, response);
	}

}
