package com.demo.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
	
		
		private static  String	DRIVER="com.mysql.jdbc.Driver";
		private static  String	URL="jdbc:mysql://192.168.1.27:49002/5f8db509a66d4?useUnicode=true&characterEncoding=UTF-8";
		private static  String	USERNAME="2a7f1940f37c4";
		private static  String	PASSWORD="996d30a261a64";
		
	
	

		/*private static  String DRIVER="com.mysql.jdbc.Driver";
		private static  String URL="jdbc:mysql://localhost/demo_jk?useUnicode=true&characterEncoding=UTF-8";
		private static  String USERNAME="root";
		private static  String PASSWORD="admin";*/
		
		
		static{
			try {
				Class.forName(DRIVER);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		public Connection getConnection(){
			Connection con = null;
			try {
				con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
			return con;
		}
		public void close(ResultSet rs ,PreparedStatement ps ,  Connection con){
			try {
				if(rs!=null){
					rs.close();
				}
				if(ps!=null){
					ps.close();
				}
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
}
