package com.cp.service;

import com.cp.model.STable;

public interface IStudentService extends IBaseService<STable> {
	public boolean findByName(String id);
}
