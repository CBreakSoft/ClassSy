package com.cp.service;

import java.util.List;

import com.cp.model.KTable;

public interface IKeChengService extends IBaseService<KTable> {

	boolean findByName(String id);
}
