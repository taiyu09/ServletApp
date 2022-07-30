package servlet_user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CompanyDAO;
import scopedata.Company;

@WebServlet("/u_co_info")
public class u_co_info extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id取得
		int id = Integer.parseInt(request.getParameter("id"));
		// DAO生成
		CompanyDAO c = new CompanyDAO();
		// pdfパス取得
		Company result = c.selectId(id);
		String pdf = result.getPdf();
		// セッションに保存
		HttpSession session = request.getSession();
		session.setAttribute("pdf",pdf);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/user/u_co_info.jsp");
		dispatcher.forward(request, response);
	}
}
