package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import scopedata.Company;

public class CompanyDAO {
	public List<Company> selectAll() {
		List<Company> dlist = new ArrayList<Company>();
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select * from company;";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int year_id = rs.getInt("year_id");
				int region_id = rs.getInt("region_id");
				int industry_id = rs.getInt("industry_id");
				int salary_id = rs.getInt("salary_id");
				String require = rs.getString("require");
				String pdf = rs.getString("pdf");
				Company company = new Company(id,name,year_id,
						region_id,industry_id,salary_id,require,pdf);
				dlist.add(company);
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
