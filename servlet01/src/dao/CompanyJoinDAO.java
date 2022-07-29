package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import scopedata.CompanyJoin;

public class CompanyJoinDAO {
	public List<CompanyJoin> selectAll() {
		List<CompanyJoin> dlist = new ArrayList<CompanyJoin>();
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select\r\n"
					+ "company.id,\r\n"
					+ "company.name,\r\n"
					+ "year.name as year,\r\n"
					+ "region.name as region,\r\n"
					+ "industry.name as industry,\r\n"
					+ "salary.name as salary,\r\n"
					+ "company.require,\r\n"
					+ "company.pdf,\r\n"
					+ "from company\r\n"
					+ "join year on year_id = year.id\r\n"
					+ "join region on region_id = region.id\r\n"
					+ "join industry on industry_id = industry.id\r\n"
					+ "join salary on salary_id = salary.id;";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String year = rs.getString("year");
				String region = rs.getString("region");
				String industry = rs.getString("industry");
				String salary = rs.getString("salary");
				String require = rs.getString("require");
				String pdf = rs.getString("pdf");
				CompanyJoin companyjoin = new CompanyJoin(id,name,year,
						region,industry,salary,require,pdf);
				dlist.add(companyjoin);
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
			return null;
		}finally {
			try {
				if( con!=null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		return dlist;
	}
}
