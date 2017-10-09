package com.hsuforum.easportal.service;

import java.util.List;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.Module;

public interface ModuleService extends BaseService<Module, java.lang.String> {

	
	List<Module> findAllFetchRelation();
	/**
	 * Find module list by system code
	 * @param systemCode
	 * @return
	 */
	List<Module> findBySystem(String systemCode);
}
