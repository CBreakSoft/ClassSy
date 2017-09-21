package com.cp.service.impl;

import java.util.List;

import com.cp.model.STable;
import com.cp.service.IBanJiService;
import com.cp.service.IStudentService;

public class StudentServiceImpl extends BaseServiceImpl<STable> implements IStudentService{

	@Override
	public boolean findByName(String id) {
		String hql = "select count(o) from STable o where o.id=?";				
		List<Long> list = baseDao.findByHql(hql, id);
	
		if (list.get(0) > 0) {// ("{\"valid\":false}");用户名重复
			return false;
		}			
		return true;
	}

}
