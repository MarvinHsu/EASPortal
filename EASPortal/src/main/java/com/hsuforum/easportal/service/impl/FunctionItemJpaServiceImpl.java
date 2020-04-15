package com.hsuforum.easportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseJpaServiceImpl;
import com.hsuforum.easportal.dao.FunctionItemJpaRepository;
import com.hsuforum.easportal.entity.FunctionItem;
import com.hsuforum.easportal.service.FunctionItemJpaService;

@Service("functionItemJpaService")
public class FunctionItemJpaServiceImpl extends BaseJpaServiceImpl<FunctionItem, String, FunctionItemJpaRepository>
		implements FunctionItemJpaService {
	

	private static final long serialVersionUID = 7390409841076847717L;
	@Autowired
	private FunctionItemJpaRepository repo;

	@Override
	public FunctionItemJpaRepository getRepo() {

		return this.repo;
	}

	@Override
	public void setRepo(FunctionItemJpaRepository repo) {
		this.repo = repo;

	}

}
