package com.hk.jsp.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection() {//데이터베이스와 연결상태 관리
		try {
			String dbURL = "jdbc:mysql://localhost:3306/jspweb";
			String dbID = "jsp";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");//jdbc 드라이버를 불러온다
			return DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
