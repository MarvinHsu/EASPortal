package com.hsuforum.easportal.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseServiceImpl;
import com.hsuforum.easportal.dao.FunctionDao;
import com.hsuforum.easportal.entity.Function;
import com.hsuforum.easportal.service.FunctionService;

@Service("functionService")
public class FunctionServiceImpl extends BaseServiceImpl<Function, java.lang.String, FunctionDao>
		implements FunctionService {

	private static final long serialVersionUID = -2716239192962086642L;

	@SuppressWarnings("unused")
	private final static Log LOG = LogFactory.getLog(FunctionServiceImpl.class);

	@Autowired
	private FunctionDao dao;

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#getDao()
	 */
	public FunctionDao getDao() {
		return this.dao;
	}

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#setDao(com.hsuforum.common.dao.BaseDao)
	 */
	public void setDao(final FunctionDao baseDao) {
		this.dao = baseDao;
	}

	
	/**
	 * @see com.hsuforum.easportal.service.FunctionService#findAllFetchRelation()
	 */
	public List<Function> findAllFetchRelation() {

		return this.getDao().findAllFetchRelation();
	}

}