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

import dao.AdminDAO;
import dao.CompanyDAO;
import dao.CompanyJoinDAO;
import dao.IndustryDAO;
import dao.RegionDAO;
import dao.SalaryDAO;
import dao.UserDAO;
import dao.YearDAO;
import scopedata.Admin;
import scopedata.Company;
import scopedata.CompanyJoin;
import scopedata.Industry;
import scopedata.Region;
import scopedata.Salary;
import scopedata.User;
import scopedata.Year;

@WebServlet("/db_sample")
public class db_checker extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		//user
		UserDAO selectuser = new UserDAO();
		List<User> ulist = selectuser.selectAll();
		session.setAttribute("uList", ulist);

		//admin
		AdminDAO selectadmin = new AdminDAO();
		List<Admin> alist = selectadmin.selectAll();
		session.setAttribute("aList", alist);

		//year
		YearDAO selectyear = new YearDAO();
		List<Year> ylist = selectyear.selectAll();
		session.setAttribute("yList", ylist);

		//region
		RegionDAO selectregion = new RegionDAO();
		List<Region> rlist = selectregion.selectAll();
		session.setAttribute("rList", rlist);

		//industry
		IndustryDAO selectindustry = new IndustryDAO();
		List<Industry> ilist = selectindustry.selectAll();
		session.setAttribute("iList", ilist);

		//salary
		SalaryDAO selectsalary = new SalaryDAO();
		List<Salary> slist = selectsalary.selectAll();
		session.setAttribute("sList", slist);

		//company
		CompanyDAO selectcompany = new CompanyDAO();
		List<Company> clist = selectcompany.selectAll();
		session.setAttribute("cList", clist);

		//companyjoin
		CompanyJoinDAO selectcompanyjoin = new CompanyJoinDAO();
		List<CompanyJoin> cjlist = selectcompanyjoin.selectAll();
		session.setAttribute("cjList", cjlist);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("WEB-INF/jsp/sample/db_checker.jsp");
		dispatcher.forward(request, response);
	}
}
