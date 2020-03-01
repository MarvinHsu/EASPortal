package com.hsuforum.easportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseJpaServiceImpl;
import com.hsuforum.easportal.dao.SystemJpaRepository;
import com.hsuforum.easportal.entity.System;
import com.hsuforum.easportal.service.SystemJpaService;

@Service("systemJpaService")
public class SystemJpaServiceImpl extends BaseJpaServiceImpl<System, String, SystemJpaRepository>
		implements SystemJpaService {

	private static final long serialVersionUID = 3574579125090629760L;
	@Autowired
	private SystemJpaRepository repo;

	@Override
	public SystemJpaRepository getRepo() {

		return this.repo;
	}

	@Override
	public void setRepo(SystemJpaRepository repo) {
		this.repo = repo;

	}

}
