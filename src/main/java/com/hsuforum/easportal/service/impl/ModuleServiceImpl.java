package com.hsuforum.easportal.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseServiceImpl;
import com.hsuforum.easportal.dao.ModuleDao;
import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.service.ModuleService;

@Service("moduleService")
public class ModuleServiceImpl extends BaseServiceImpl<Module, java.lang.String, ModuleDao> implements ModuleService {

	private static final long serialVersionUID = -339902663041468558L;

	@SuppressWarnings("unused")
	private final static Log LOG = LogFactory.getLog(ModuleServiceImpl.class);

	@Autowired
	private ModuleDao dao;

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#getDao()
	 */
	public ModuleDao getDao() {
		return this.dao;
	}

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#setDao(com.hsuforum.common.dao.BaseDao)
	 */
	public void setDao(final ModuleDao baseDao) {
		this.dao = baseDao;
	}

	
	/**
	 * @see com.hsuforum.easportal.service.ModuleService#findAllFetchRelation()
	 */
	public List<Module> findAllFetchRelation() {

		return this.getDao().findAllFetchRelation();
	}


	/**
	 * @see com.hsuforum.easportal.service.ModuleService#findBySystem(java.lang.String)
	 */
	@Override
	public List<Module> findBySystem(String systemCode) {

		return this.getDao().findBySystem(systemCode);
	}

}