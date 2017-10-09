package com.hsuforum.easportal.dao;

import java.util.List;

import com.hsuforum.common.dao.BaseDao;
import com.hsuforum.easportal.entity.Function;

public interface FunctionDao extends BaseDao<Function, java.lang.String> {

	
	List<Function> findAllFetchRelation();

}
