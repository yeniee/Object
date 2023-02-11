package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	Connection con;			// db연결 인터페이스 
	PreparedStatement ps;	// sql연결/조작 인터페이스 
	ResultSet rs;			// sql결과[쿼리] 조작 인터페이스
		
	public Dao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/object", 
					"root", 
					"1234");
		} catch (Exception e) {System.out.println("Dao오류"+e);}
	}
	
	
}
