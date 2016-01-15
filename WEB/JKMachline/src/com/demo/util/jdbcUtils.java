package com.demo.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

public class jdbcUtils   {
	static DBConnection con = new DBConnection();
	static Logger log = Logger.getLogger(jdbcUtils.class);

	/**
	 * 
	 * 执行sql语句    insert update   返回Integer
	 * liufei 2016-1-15
	 * @param sql
	 * @return  0-执行失败,1-执行成功
	 */
	public static Integer execute(String sql){
		Integer result = 0;
		try {
			PreparedStatement ps = con.getConnection().prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			log.error(" [ ----execute 执行sql错误："+e.getMessage()+"------- ] ");
		}
		return result;
	}
	
	
	/**
	 * 查询sql 返回 ResultSet集合
	 * liufei 2016-1-15
	 * @param sql
	 * @return
	 */
	public static ResultSet executeQuery(String sql){
		PreparedStatement ps;
		ResultSet executeQuery=null;
		try {
			ps = con.getConnection().prepareStatement(sql);
			executeQuery = ps.executeQuery();
		} catch (SQLException e) {
			log.error(" [ ----executeQuery 执行sql错误："+e.getMessage()+"------- ] ");
		}
		return executeQuery;
		
	}
	public static void main(String[] args) {
		String sql = "select * from backstage_user where user_name='admin' and user_password='admin'";
		String sql1 = "insert into backstage_user(user_id,user_name,user_password) values('001','junzhang','junzhang')";
		ResultSet executeQuery = executeQuery(sql);
		try {
			while(executeQuery.next()){
				System.out.println(executeQuery.getString("user_name")+"---"+executeQuery.getString("user_password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
