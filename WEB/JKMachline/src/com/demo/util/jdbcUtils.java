package com.demo.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class jdbcUtils   {
	static DBConnection cons = new DBConnection();
	static Logger log = Logger.getLogger(jdbcUtils.class);

	/**
	 * 
	 * 执行sql语句    insert update   返回Integer
	 * liufei 2016-1-15
	 * @param sql
	 * @return  0-执行失败,1-执行成功
	 */
	public static Integer execute(String sql ){
		Integer result = -1;
		ResultSet rs=null;
		PreparedStatement ps = null;
		Connection con = cons.getConnection();
		try {
			log.info("[ jdbc.execute 执行sql:"+sql+"  ]");
			ps = con.prepareStatement(sql);
			/*for (int i = 0; i < par.length; i++) {
				ps.setObject(i+1, par[i]);
			}*/
			result = ps.executeUpdate();
		} catch (Exception e) {
			result = -1;
			log.error(" [ jdbc.execute 执行sql错误："+e.getMessage()+" ] ");
			e.printStackTrace();
		}finally{
			cons.close(rs, ps, con);
		}
		return result;
	}
	
	
	
	
	/**
	 * 
	 * 执行sql语句     update   返回Integer
	 * liufei 2016-1-15
	 * @param sql
	 * @return  0-执行失败,1-执行成功
	 */
	public static Integer saveOrUpdateData(String sql,Object[] par){
		Integer result = -1;
		ResultSet rs=null;
		PreparedStatement ps = null;
		Connection con = cons.getConnection();
		try {
			log.info("[ jdbc.execute 执行sql:"+sql+"  ]");
			ps = con.prepareStatement(sql);
			for (int i = 0; i < par.length; i++) {
				ps.setObject(i+1, par[i]);
			}
			result = ps.executeUpdate();
		} catch (Exception e) {
			result = -1;
			log.error(" [ jdbc.execute 执行sql错误："+e.getMessage()+" ] ");
			e.printStackTrace();
		}finally{
			cons.close(rs, ps, con);
		}
		return result;
	}
	
	
	
	/**
	 * 查询sql 返回 ResultSet集合
	 * liufei 2016-1-15
	 * @param sql
	 * @return
	 */
	public static List<Map<String, String>> executeQuery(String sql){
		PreparedStatement ps = null;
		ResultSet rs =null;
		Connection con = cons.getConnection();
		List<Map<String, String>> list = new ArrayList<Map<String,String>>();
		try {
			log.info("[ jdbc.execute 执行sql:"+sql+"  ]");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		    ResultSetMetaData md = rs.getMetaData(); //获得结果集结构信息,元数据
		    int columnCount = md.getColumnCount();   //获得列数 
	        while(rs.next()){
	        	Map<String,String> rowData = new HashMap<String,String>();
	        	for (int i = 1; i <= columnCount; i++) {
	                rowData.put(md.getColumnName(i), rs.getString(i));
	            }
	        	list.add(rowData);
	        }
		} catch (SQLException e) {
			log.error(" [ executeQuery 执行sql错误："+e.getMessage()+" ] ");
		}finally{
			cons.close(rs, ps, con);
		}
		return list;
	}
	/*public static void main(String[] args) {
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
	}*/

}
