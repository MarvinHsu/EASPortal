package com.hsuforum.easportal.service;

import java.util.List;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.GroupFunction;

public interface GroupFunctionService extends BaseService<GroupFunction, String> {

	
	List<GroupFunction> findAllFetchRelation();
	/**
	 * find group functions by system code
	 * @param systemCode
	 * @return
	 */
	List<GroupFunction> findBySystem(String systemCode);

}
