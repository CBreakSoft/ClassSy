package com.cp.service.impl;

import java.util.List;

import com.cp.model.CTable;
import com.cp.service.IChengJiService;

public class ChengJiServiceImpl extends BaseServiceImpl<CTable> implements IChengJiService{
	@Override
	public boolean findByName(Long id) {
		String hql = "select count(o) from CTable o where o.id=?";				
		List<Long> list = baseDao.findByHql(hql, id);
		if (list.get(0) > 0) {// ("{\"valid\":false}");用户名重复
			return false;
		}			
		return true;
	}
}
