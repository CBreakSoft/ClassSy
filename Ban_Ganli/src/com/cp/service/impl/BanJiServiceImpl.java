package com.cp.service.impl;


import java.util.List;

import com.cp.model.BTable;
import com.cp.service.IBanJiService;

public class BanJiServiceImpl extends BaseServiceImpl<BTable> implements IBanJiService{

	@Override
	public boolean findByName(String id) {
		String hql = "select count(o) from BTable o where o.id=?";				
		List<Long> list = baseDao.findByHql(hql, id);
	
		if (list.get(0) > 0) {// ("{\"valid\":false}");用户名重复
			return false;
		}			
		return true;
	}
}
