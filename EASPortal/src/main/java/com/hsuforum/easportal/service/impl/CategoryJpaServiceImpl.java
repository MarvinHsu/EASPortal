package com.hsuforum.easportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseJpaServiceImpl;
import com.hsuforum.easportal.dao.CategoryJpaRepository;
import com.hsuforum.easportal.entity.Category;
import com.hsuforum.easportal.service.CategoryJpaService;

@Service("categoryJpaService")
public class CategoryJpaServiceImpl extends BaseJpaServiceImpl<Category, String, CategoryJpaRepository>
		implements CategoryJpaService {

	private static final long serialVersionUID = 291137290042693201L;
	@Autowired
	private CategoryJpaRepository repo;

	@Override
	public CategoryJpaRepository getRepo() {

		return this.repo;
	}

	@Override
	public void setRepo(CategoryJpaRepository repo) {
		this.repo = repo;

	}
}
