package com.hsuforum.easportal.dao;

import java.util.List;

import com.hsuforum.common.dao.BaseDao;
import com.hsuforum.easportal.entity.Module;

public interface ModuleDao extends BaseDao<Module, java.lang.String> {

	
	List<Module> findAllFetchRelation();

	/**
	 * Find module list by system code
	 * @param systemCode
	 * @return
	 */
	List<Module> findBySystem(String systemCode);
}
