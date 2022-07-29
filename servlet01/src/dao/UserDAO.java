package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import scopedata.User;

public class UserDAO {
	public User select(String _id) {
		PreparedStatement pstmt;
		Connection con = null;
		String sql;
		User user = new User();
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select * from user where id = " + "'" +_id + "'";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String salt = rs.getString("salt");
				String mail = rs.getString("mail");
				String name = rs.getString("name");

				user = new User(id,pass,salt,mail,name);
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
		return user;
	}
	public User trylogin(String _id,String _pass) {
		PreparedStatement pstmt;
		Connection con = null;
		String sql;
		User user = new User();
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select * from user where id =" + "'" +_id + "'" + " and pass =" + "'" + _pass + "'";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String salt = rs.getString("salt");
				String mail = rs.getString("mail");
				String name = rs.getString("name");

				user = new User(id,pass,salt,mail,name);
			} else {
				user = null;
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
		return user;
	}
	public List<User> selectAll() {
		List<User> dlist = new ArrayList<User>();
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "select * from user;";
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String salt = rs.getString("salt");
				String mail = rs.getString("mail");
				String name = rs.getString("name");
				User user = new User(id,pass,salt,mail,name);
				dlist.add(user);
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
