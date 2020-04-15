package com.hsuforum.easportal.dao;

import java.util.List;

import com.hsuforum.common.dao.BaseDao;
import com.hsuforum.easportal.entity.GroupFunction;

public interface GroupFunctionDao extends BaseDao<GroupFunction, String> {

	
	List<GroupFunction> findAllFetchRelation();

}
