package com.hsuforum.easportal.dao.jpa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.hsuforum.common.dao.jpa.BaseDaoImpl;
import com.hsuforum.easportal.dao.CategoryDao;
import com.hsuforum.easportal.entity.Category;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository("categoryDao")
public class CategoryDaoImpl extends BaseDaoImpl<Category, java.lang.String> implements CategoryDao {

	private static final long serialVersionUID = 3623394877513916506L;
	@PersistenceContext(unitName = "default")
	private EntityManager entityManager;

	/**
	 * 取得EntityManager
	 * 
	 * @return
	 */
	public EntityManager getEntityManager() {
		return this.entityManager;
	}

	/**
	 * 設定EntityManager
	 * 
	 * @param entityManager
	 */
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	/**
	 * 假如Entity(Business Object)，有Many-to-One或Many-to-Many的狀況， 則Code
	 * Generator會產生此Interface以供修改使用，可自行改成需要的Method，
	 * 主要作用是在read頁面就Fetch所有相關關聯的資料，免得再update頁面出現問題 p.s.如有master
	 * detail的狀況請自行加入Fetch
	 * 
	 * @return List<Category>
	 */
	public List<Category> findAllFetchRelation() {
		StringBuffer queryString = new StringBuffer();
		queryString.append("SELECT DISTINCT obj FROM Category obj	");
		queryString.append("ORDER BY obj.id	");

		List<Category> list = this.find(queryString);

		return list;
	}

	/**
	 * @see com.hsuforum.easportal.dao.CategoryDao#findByUserId(java.lang.String)
	 */
	@Override
	public List<Category> findByUserId(String userId) {
		StringBuffer queryString = new StringBuffer();
		queryString.append("SELECT DISTINCT cat FROM Category cat	");
		queryString.append("	INNER JOIN FETCH cat.systems system ");
		queryString.append("	INNER JOIN FETCH system.groups g ");
		queryString.append("	INNER JOIN FETCH g.users user ");
		queryString.append("WHERE user.account = :account ");
		queryString.append("ORDER BY cat.sequence	");

		

		Map<String, String> params = new HashMap<String, String>();
		params.put("account", userId);
		List<Category> list = (List<Category>) this.findByNamedParams(queryString, params);
		return list;
	}

}
