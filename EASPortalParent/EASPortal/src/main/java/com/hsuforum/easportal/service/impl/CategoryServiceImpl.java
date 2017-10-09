package com.hsuforum.easportal.service.impl;




import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseServiceImpl;
import com.hsuforum.easportal.dao.CategoryDao;
import com.hsuforum.easportal.entity.Category;
import com.hsuforum.easportal.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl extends BaseServiceImpl<Category, java.lang.String, CategoryDao>
	implements CategoryService {

	private static final long serialVersionUID = 4721423927088746341L;

	@SuppressWarnings("unused")
	private final static Log LOG = LogFactory.getLog(CategoryServiceImpl.class);

	@Autowired
	private CategoryDao dao;

 	/**
	 * 回傳Data Access Object
	 *
	 * @return categoryDao
	 */
	public CategoryDao getDao() {
		return this.dao;
	}

	/**
	 * 設定Data Access Object
	 *
	 * @param baseDao
	 */
	public void setDao(final CategoryDao baseDao) {
		this.dao = baseDao;
	}
 


	
	/**
	 * 假如Entity(Business Object)，有Many-to-One或Many-to-Many的狀況，
	 * 則Code Generator會產生此Interface以供修改使用，可自行改成需要的Method，
	 * 主要作用是在read頁面就Fetch所有相關關聯的資料，免得再update頁面出現問題
	 * @return List<Category>
	 */
	public List<Category> findAllFetchRelation(){
		
		return this.getDao().findAllFetchRelation();
	}

	/**
	 * @see com.hsuforum.easportal.service.CategoryService#findByUserId(java.lang.String)
	 */
	@Override
	public List<Category> findByUserId(String userId) {

		return this.getDao().findByUserId(userId);
	}



}