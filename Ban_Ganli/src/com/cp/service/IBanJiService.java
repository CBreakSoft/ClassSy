package com.cp.service;

import com.cp.model.BTable;

public interface IBanJiService extends IBaseService<BTable> {
	
	public boolean findByName(String id);
	
}
