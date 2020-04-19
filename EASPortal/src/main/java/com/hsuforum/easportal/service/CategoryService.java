package com.hsuforum.easportal.service;


import java.util.List;

import com.hsuforum.common.service.BaseService;
import com.hsuforum.easportal.entity.Category;

public interface CategoryService extends BaseService<Category, java.lang.String> {



	/**
	 * 假如Entity(Business Object)，有Many-to-One或Many-to-Many的狀況，
	 * 則Code Generator會產生此Interface以供修改使用，可自行改成需要的Method，
	 * 主要作用是在read頁面就Fetch所有相關關聯的資料，免得再update頁面出現問題
	 * @return List<Category>
	 */
	List<Category> findAllFetchRelation();

	/**
	 * Find categories by userId
	 * @param userId
	 * @return
	 */
	List<Category> findByUserId(String userId);

}
