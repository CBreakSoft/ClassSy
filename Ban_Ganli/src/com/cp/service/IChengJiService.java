package com.cp.service;

import com.cp.model.CTable;


public interface IChengJiService extends IBaseService<CTable> {
	boolean findByName(Long id);
}
