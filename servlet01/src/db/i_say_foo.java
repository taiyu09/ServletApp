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
			sql = "drop table Company;\r\n"
					+ "create table Company(\r\n"
					+ "	id int(2) not null auto_increment,\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	year_id int(2) not null,\r\n"
					+ "	region_id int(2) not null,\r\n"
					+ "	industry_id int(2) not null,\r\n"
					+ "	salary_id int(2) not null,\r\n"
					+ "	require varchar(32),\r\n"
					+ "	pdf varchar(255) not null,\r\n"
					+ "	primary key(id),\r\n"
					+ "	foreign key(year_id) references year(id),\r\n"
					+ "	foreign key(region_id) references region(id),\r\n"
					+ "	foreign key(industry_id) references industry(id),\r\n"
					+ "	foreign key(salary_id) references salary(id)\r\n"
					+ ");\r\n"
					+ "insert into Company values\r\n"
					+ "	(00,'XXX株式会社',00,03,01,05,'','XXX.pdf'),\r\n"
					+ "	(01,'YYY株式会社',03,03,06,06,'','YYY.pdf'),\r\n"
					+ "	(02,'ZZZ株式会社',04,13,03,07,'','ZZZ.pdf');";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("正常に完了しました");
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}