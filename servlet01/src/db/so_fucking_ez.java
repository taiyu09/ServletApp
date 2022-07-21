package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class so_fucking_ez {
	public static void main( String[] args ) {
		PreparedStatement pstmt;
		Connection con = null;
		String sql = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/servlet01","sa","morijyobi");
			sql = "create table User(\r\n"
					+ "	id varchar(32) not null,\r\n"
					+ "	pass varchar(255) not null,\r\n"
					+ "	salt varchar(16) not null,\r\n"
					+ "	mail varchar(64) not null unique,\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Admin(\r\n"
					+ "	id varchar(32) not null,\r\n"
					+ "	pass varchar(255) not null,\r\n"
					+ "	salt varchar(16) not null,\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Year\r\n"
					+ "(\r\n"
					+ "	id int(2) not null auto_increment,						\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Region(\r\n"
					+ "	id int(2) not null auto_increment,\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Industry(\r\n"
					+ "	id int(2) not null auto_increment,						\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Salary(\r\n"
					+ "	id int(2) not null auto_increment,						\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	primary key(id)\r\n"
					+ ");\r\n"
					+ "create table Company(\r\n"
					+ "	id int(2) not null auto_increment,\r\n"
					+ "	name varchar(32) not null,\r\n"
					+ "	year_id int(2) not null,\r\n"
					+ "	region_id int(2) not null,\r\n"
					+ "	industry_id int(2) not null,\r\n"
					+ "	salary_id int(2) not null,\r\n"
					+ "	require varchar(32),\r\n"
					+ "	primary key(id),\r\n"
					+ "	foreign key(year_id) references year(id),\r\n"
					+ "	foreign key(region_id) references region(id),\r\n"
					+ "	foreign key(industry_id) references industry(id),\r\n"
					+ "	foreign key(salary_id) references salary(id)\r\n"
					+ ");";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			sql = "insert into user values(\r\n"
					+ "	'taiyu.u',\r\n"
					+ "	'593ca65d6d1e68ca4504fd0f5457fba4198804ed5f60592649e7046ae4aee9c7e4e755445f8d59b04b3a70e0e825e53a6457917cfb422a4ae03b0b9a69c9028',\r\n"
					+ "	'salt',\r\n"
					+ "	't.ogasawara.sys21@morijyobi.ac.jp',\r\n"
					+ "	'ゆーざたいゆ'\r\n"
					+ "	);\r\n"
					+ "insert into Admin values(\r\n"
					+ "	'taiyu.a',\r\n"
					+ "	'593ca65d6d1e68ca4504fd0f5457fba4198804ed5f60592649e7046ae4aee9c7e4e755445f8d59b04b3a70e0e825e53a6457917cfb422a4ae03b0b9a69c9028',\r\n"
					+ "	'salt',\r\n"
					+ "	'あどみんたいゆ'\r\n"
					+ "	);\r\n"
					+ "insert into Year values\r\n"
					+ "	(00,'それ以前'),\r\n"
					+ "	(01,'令和元年'),\r\n"
					+ "	(02,'令和２年'),\r\n"
					+ "	(03,'令和３年'),\r\n"
					+ "	(04,'令和４年');\r\n"
					+ "insert into Region values\r\n"
					+ "	(01,'北海道'),(02,'青森県'),(03,'岩手県'),(04,'宮城県'),(05,'秋田県'),\r\n"
					+ "	(06,'山形県'),(07,'福島県'),(08,'茨城県'),(09,'栃木県'),(10,'群馬県'),\r\n"
					+ "	(11,'埼玉県'),(12,'千葉県'),(13,'東京都'),(14,'神奈川県'),(15,'新潟県'),\r\n"
					+ "	(16,'富山県'),(17,'石川県'),(18,'福井県'),(19,'山梨県'),(20,'長野県'),\r\n"
					+ "	(21,'岐阜県'),(22,'静岡県'),(23,'愛知県'),(24,'三重県'),(25,'滋賀県'),\r\n"
					+ "	(26,'京都府'),(27,'大阪府'),(28,'兵庫県'),(29,'奈良県'),(30,'和歌山県'),\r\n"
					+ "	(31,'鳥取県'),(32,'島根県'),(33,'岡山県'),(34,'広島県'),(35,'山口県'),\r\n"
					+ "	(36,'徳島県'),(37,'香川県'),(38,'愛媛県'),(39,'高知県'),(40,'福岡県'),\r\n"
					+ "	(41,'佐賀県'),(42,'長崎県'),(43,'熊本県'),(44,'大分県'),(45,'宮崎県'),\r\n"
					+ "	(46,'鹿児島県'),(47,'沖縄県');\r\n"
					+ "insert into Industry values\r\n"
					+ "	(01,'ソフトウエア'),\r\n"
					+ "	(02,'ネットワーク'),\r\n"
					+ "	(03,'通信'),\r\n"
					+ "	(04,'ハードウェア'),\r\n"
					+ "	(05,'情報処理'),\r\n"
					+ "	(06,'製造'),\r\n"
					+ "	(07,'自動車'),\r\n"
					+ "	(08,'エネルギー'),\r\n"
					+ "	(09,'その他');\r\n"
					+ "insert into Salary values\r\n"
					+ "	(01,'～16万円未満'),\r\n"
					+ "	(02,'16～17万円未満'),\r\n"
					+ "	(03,'17～18万円未満'),\r\n"
					+ "	(04,'18～19万円未満'),\r\n"
					+ "	(05,'19～20万円未満'),\r\n"
					+ "	(06,'20～21万円未満'),\r\n"
					+ "	(07,'21～22万円未満'),\r\n"
					+ "	(08,'22～23万円未満'),\r\n"
					+ "	(09,'23～24万円未満'),\r\n"
					+ "	(10,'それ以上');\r\n"
					+ "insert into Company values\r\n"
					+ "	(00,'XXX株式会社',00,03,01,05,''),\r\n"
					+ "	(01,'YYY株式会社',03,03,06,06,''),\r\n"
					+ "	(02,'ZZZ株式会社',04,13,03,07,'');";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("正常に完了しました");
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
