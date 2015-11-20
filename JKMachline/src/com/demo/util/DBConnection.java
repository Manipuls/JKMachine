package com.demo.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {

		private static final String DRIVER="com.mysql.jdbc.Driver";
		private static final String URL="jdbc:mysql://localhost/demo_jk?useUnicode=true&characterEncoding=utf-8";
		private static final String USERNAME="root";
		private static final String PASSWORD="admin";
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
