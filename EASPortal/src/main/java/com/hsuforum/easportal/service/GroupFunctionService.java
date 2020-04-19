package com.hsuforum.easportal.service;

import java.util.List;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.GroupFunction;

public interface GroupFunctionService extends BaseService<GroupFunction, String> {

	
	List<GroupFunction> findAllFetchRelation();

}
