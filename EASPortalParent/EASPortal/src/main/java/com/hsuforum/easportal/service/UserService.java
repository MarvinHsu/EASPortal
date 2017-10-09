package com.hsuforum.easportal.service;

import java.util.List;
import java.util.Map;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.User;

/**
 * User Service Interface
 * 
 * @author Administrator
 *
 */
public interface UserService extends BaseService<User, String> {
	
	List<User> findAllFetchRelation();

	
	User doLogin(final String account);

	
	List<User> findByCriteriaMapFetchRelation(final Map<String, ? extends Object> criteriaMap);

	
	User findByAccountOtherEmail(final String account, final String email);

	
	User findByAccount(final String account);

	User findForSentActivate(final String email);
	/**
	 * Find user by system code and account
	 * @param systemCode
	 * @param account
	 * @return
	 */
	User findBySystemUser(String systemCode, String account);
}
