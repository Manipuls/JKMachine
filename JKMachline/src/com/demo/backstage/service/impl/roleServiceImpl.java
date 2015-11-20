package com.demo.backstage.service.impl;

import org.apache.ibatis.session.SqlSession;

import com.demo.backstage.dao.roleDao;
import com.demo.backstage.doman.Role;
import com.demo.backstage.service.roleService;
import com.demo.util.CreateSession;

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

}
