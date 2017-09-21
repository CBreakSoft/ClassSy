package com.cp.service;

import java.io.Serializable;
import java.util.List;
import com.cp.query.BaseQuery;
import com.cp.query.PageList;

public interface IBaseService<T> {
	void save(T t);

	void update(T t);

	void delete(Serializable id);

	T get(Serializable id);

	List<T> getAll();

	PageList findByQuery(BaseQuery baseQuery);
	
}
