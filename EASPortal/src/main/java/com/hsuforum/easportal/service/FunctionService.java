package com.hsuforum.easportal.service;

import java.util.List;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.Function;

public interface FunctionService extends BaseService<Function, java.lang.String> {

	
	List<Function> findAllFetchRelation();

}
