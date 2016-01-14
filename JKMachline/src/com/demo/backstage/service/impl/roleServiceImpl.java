package com.demo.backstage.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.demo.backstage.dao.roleDao;
import com.demo.backstage.doman.Role;
import com.demo.backstage.service.roleService;
import com.demo.util.CreateSession;
import com.google.gson.Gson;

public class roleServiceImpl implements roleService {
	
	private roleDao roledao;

	/* (non-Javadoc)  根据用户id 查询用户角色
	 * @see com.demo.backstage.service.roleService#findAllRole(java.lang.Integer)
	 */
	@Override
	public Role findAllRole(Integer userid) {
		// TODO Auto-generated method stub
		SqlSession session = new CreateSession().getSession();
		roledao = session.getMapper(roleDao.class);
		Role findAllRole = roledao.findAllRole(userid);
		return findAllRole;
	}

	@Override
	public String getAllRoles() {
		SqlSession session = new CreateSession().getSession();
		roledao = session.getMapper(roleDao.class);
		List<Role> allRole = roledao.getAllRole();
		String json ="{\"total\":\""+allRole.size()+"\",\"rows\":[";
		boolean flag = false;
		for (Role role : allRole) {
			if(flag)json+=",";
			flag = true;
			json += new Gson().toJson(role);
		}
		json +="]}";
		return json;
	}

}
