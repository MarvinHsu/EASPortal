package com.hsuforum.easportal.entity.listener;

import com.hsuforum.easportal.entity.User;

/**
 * Get user to update create user and update user
 * @author Marvin
 *
 */
public interface SystemUserOperations {

	/**
	 * Set create user
	 *
	 * @param createUser
	 */
	void setCreateUser(User createUser);

	/**
	 * Set update user
	 *
	 * @param updateUser
	 */
	void setUpdateUser(User updateUser);
}
