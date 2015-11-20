package com.demo.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CreateSession {
	private static String path = "mybatis-config.xml";
	private static InputStream is = null;
	private static SqlSessionFactory factory = null;
	
	static{
		try {
			is = Resources.getResourceAsStream(path);
			factory = new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public SqlSession getSession(){
		return factory.openSession();
	}

}
