package com.hsuforum.easportal.service.impl;




import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseServiceImpl;
import com.hsuforum.easportal.dao.SystemDao;
import com.hsuforum.easportal.entity.System;
import com.hsuforum.easportal.service.SystemService;

@Service("systemService")
public class SystemServiceImpl extends BaseServiceImpl<System, java.lang.String, SystemDao>
	implements SystemService {

	private static final long serialVersionUID = -6793270780073269799L;

	@SuppressWarnings("unused")
	private final static Log LOG = LogFactory.getLog(SystemServiceImpl.class);

	@Autowired
	private SystemDao dao;

 	/**
	 * 回傳Data Access Object
	 *
	 * @return systemDao
	 */
	public SystemDao getDao() {
		return this.dao;
	}

	/**
	 * 設定Data Access Object
	 *
	 * @param baseDao
	 */
	public void setDao(final SystemDao baseDao) {
		this.dao = baseDao;
	}
 
		


	
	/**
	 * 假如Entity(Business Object)，有Many-to-One或Many-to-Many的狀況，
	 * 則Code Generator會產生此Interface以供修改使用，可自行改成需要的Method，
	 * 主要作用是在read頁面就Fetch所有相關關聯的資料，免得再update頁面出現問題
	 * @return List<System>
	 */
	public List<System> findAllFetchRelation(){
		
		return this.getDao().findAllFetchRelation();
	}



}