package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class i_say_foo {
	public static void main( String[] args ) {
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "update user set pass='598d9239c7d6b6c36f7c082dbafa01fdbcb67c70774b48f43248f430e809695fbcab4d68e63b9bbd639852bd3108d9139421971598020f0ef3478e7187cb4761' where id='taiyu.u'";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("正常に完了しました");
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}