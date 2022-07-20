package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import scopedata.Salary;

public class SalaryDAO {
	public List<Salary> selectAll() {
		List<Salary> dlist = new ArrayList<Salary>();
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select * from salary;";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				Salary salary = new Salary(id,name);
				dlist.add(salary);
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