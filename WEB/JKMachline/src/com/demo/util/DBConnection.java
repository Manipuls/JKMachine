package com.demo.util;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class DBConnection {

		private static  String DRIVER="com.mysql.jdbc.Driver";
		private static  String URL="jdbc:mysql://localhost/demo_jk?useUnicode=true&characterEncoding=utf-8";
		private static  String USERNAME="root";
		private static  String PASSWORD="admin";
		
		public static void readProperties(HttpServletRequest request){
			String path = Test.class.getResource("").toString();  
			String filePath = path.substring(5, path.indexOf("com"))+"mysqlConnection.properties";
	        File file = new File(filePath);
	        BufferedReader reader = null;
	        try {
	            reader = new BufferedReader(new FileReader(file));
	            String tempString = null;
	            while ((tempString = reader.readLine()) != null) {
	                // 显示行号
	            	String[] split = tempString.split("=");
	                if("driver".equals(split[0])){
	                 	DRIVER = split[1];
	                }
	                if("url".equals(split[0])){
	                	URL = split[1];
	                }
	                if("username".equals(split[0])){
	                	USERNAME = split[1];
	                }
	                if("password".equals(split[0])){
	                	PASSWORD = split[1];
	                }
	            }
	            reader.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally {
	            if (reader != null) {
	                try {
	                    reader.close();
	                } catch (IOException e1) {
	                }
	            }
	        }
		}
		
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
