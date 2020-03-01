package com.hsuforum.easportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsuforum.common.service.impl.BaseJpaServiceImpl;
import com.hsuforum.easportal.dao.ModuleJpaRepository;
import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.service.ModuleJpaService;

@Service("moduleJpaService")
public class ModuleJpaServiceImpl extends BaseJpaServiceImpl<Module, String, ModuleJpaRepository>
		implements ModuleJpaService {
	private static final long serialVersionUID = 8166682726719828895L;

	@Autowired
	private ModuleJpaRepository repo;

	@Override
	public ModuleJpaRepository getRepo() {

		return this.repo;
	}

	@Override
	public void setRepo(ModuleJpaRepository repo) {
		this.repo = repo;

	}

}
