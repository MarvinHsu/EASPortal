package com.hsuforum.easportal.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.hsuforum.common.dao.jpa.BaseDaoImpl;
import com.hsuforum.easportal.dao.GroupFunctionDao;
import com.hsuforum.easportal.entity.GroupFunction;

@Repository("groupFunctionDao")
public class GroupFunctionDaoImpl extends BaseDaoImpl<GroupFunction, String>
		implements GroupFunctionDao {

	private static final long serialVersionUID = 5667386651417947800L;
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
	 * @see com.hsuforum.common.dao.jpa.BaseDaoImpl#setEntityManager(javax.persistence.EntityManager)
	 */
	@Override
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	
	/**
	 * @see com.hsuforum.easportal.dao.GroupFunctionDao#findAllFetchRelation()
	 */
	@Override
	public List<GroupFunction> findAllFetchRelation() {
		StringBuffer queryString = new StringBuffer();
		queryString.append("SELECT DISTINCT entity FROM GroupFunction entity ");
		queryString.append("LEFT JOIN FETCH entity.functionItem ");
		queryString.append("LEFT JOIN FETCH entity.group ");
		queryString.append("LEFT JOIN FETCH entity.function ");
		queryString.append("ORDER BY entity.id	");

		List<GroupFunction> list = this.find(queryString);

		return list;
	}


	

}
