package com.hsuforum.easportal.dao.jpa;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hsuforum.common.dao.jpa.BaseDaoImpl;
import com.hsuforum.easportal.dao.FunctionItemDao;
import com.hsuforum.easportal.entity.FunctionItem;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository("functionItemDao")
public class FunctionItemDaoImpl extends BaseDaoImpl<FunctionItem, java.lang.String> implements FunctionItemDao {

	private static final long serialVersionUID = 2593071484506950994L;
	@PersistenceContext(name = "default")
	private EntityManager entityManager;

	/**
	 * @see com.hsuforum.common.dao.jpa.BaseDaoImpl#getEntityManager()
	 */
	@Override
	public EntityManager getEntityManager() {
		return this.entityManager;
	}

	/**
	 * @see com.hsuforum.common.dao.jpa.BaseDaoImpl#setEntityManager(jakarta.persistence.EntityManager)
	 */
	@Override
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	
	/**
	 * @see com.hsuforum.easportal.dao.FunctionItemDao#findAllFetchRelation()
	 */
	@Override
	public List<FunctionItem> findAllFetchRelation() {
		StringBuffer queryString = new StringBuffer();
		queryString.append("SELECT DISTINCT obj FROM FunctionItem obj	");
		queryString.append("ORDER BY obj.id	");

		List<FunctionItem> list = this.find(queryString);

		return list;
	}

}
