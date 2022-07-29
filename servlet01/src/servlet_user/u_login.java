package servlet_user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.MakeHash;
import scopedata.Account;
import scopedata.User;

@WebServlet("/u_login")
public class u_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/user/u_login.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// パラメータ取得
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		// DAO生成
		UserDAO u = new UserDAO();

		// id で DB 検索
		User result = u.select(id);

		// ソルトを抽出して結合
		String passalt = pass + result.getSalt();

		// ハッシュ生成用
		MakeHash mh = new MakeHash(passalt);
		pass = mh.getHash();

		String path;
		if(result != null) {
			// id pass で検索
			result = u.trylogin(id, pass);
			if(result != null) {
				// id ヒットあり pass 正解
				path = "WEB-INF/jsp/user/u_menu.jsp";
				// Accountを作成しセッションに保存
				Account account = new Account("利用者",result.getId(),result.getName());
				HttpSession session = request.getSession();
				session.setAttribute("account",account);
			} else {
				// id ヒットあり pass 間違い
				path = "WEB-INF/jsp/user/u_login_err.jsp";
			}
		} else {
			// id ヒットなし
			path = "WEB-INF/jsp/user/u_login_err.jsp";
		}
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
}
