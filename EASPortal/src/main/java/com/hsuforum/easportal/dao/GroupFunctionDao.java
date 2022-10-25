package com.hsuforum.easportal.dao;

import java.util.List;

import com.hsuforum.common.dao.BaseDao;
import com.hsuforum.easportal.entity.GroupFunction;
import com.hsuforum.easportal.entity.Module;

public interface GroupFunctionDao extends BaseDao<GroupFunction, String> {

	
	List<GroupFunction> findAllFetchRelation();
	/**
	 * find group functions by system code
	 * @param systemCode
	 * @return
	 */
	List<GroupFunction> findBySystem(String systemCode);
	
}
