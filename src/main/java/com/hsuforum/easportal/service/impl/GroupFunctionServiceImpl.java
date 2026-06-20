package com.hsuforum.easportal.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseServiceImpl;
import com.hsuforum.easportal.dao.GroupFunctionDao;
import com.hsuforum.easportal.entity.GroupFunction;
import com.hsuforum.easportal.service.GroupFunctionService;

@Service("groupFunctionService")
public class GroupFunctionServiceImpl
		extends BaseServiceImpl<GroupFunction, String, GroupFunctionDao>
		implements GroupFunctionService {

	private static final long serialVersionUID = -1384584947413021331L;

	@SuppressWarnings("unused")
	private final static Log LOG = LogFactory.getLog(GroupFunctionServiceImpl.class);

	@Autowired
	private GroupFunctionDao dao;

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#getDao()
	 */
	public GroupFunctionDao getDao() {
		return this.dao;
	}

	
	/**
	 * @see com.hsuforum.common.service.impl.BaseServiceImpl#setDao(com.hsuforum.common.dao.BaseDao)
	 */
	public void setDao(final GroupFunctionDao baseDao) {
		this.dao = baseDao;
	}

	
	/**
	 * @see com.hsuforum.easportal.service.GroupFunctionService#findAllFetchRelation()
	 */
	public List<GroupFunction> findAllFetchRelation() {

		return this.getDao().findAllFetchRelation();
	}


	@Override
	public List<GroupFunction> findBySystem(String systemCode) {

		return this.getDao().findBySystem(systemCode);
	}

}