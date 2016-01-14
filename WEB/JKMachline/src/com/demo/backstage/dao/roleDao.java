package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.Role;

public interface roleDao {
	
	/** 通过用户id 查询用户 角色
	 * @param userid
	 * @return
	 */
	public Role findAllRole(Integer userid);
	
	
	
	public List<Role> getAllRole(); 
}
