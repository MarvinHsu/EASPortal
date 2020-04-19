package com.hsuforum.easportal.web.vowrapper;

import com.hsuforum.common.web.vo.impl.VoWrapperImpl;
import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.web.vo.ModuleVo;

/**
 * The wrapper transfer Module to ModuleVo
 * @author Marvin
 */
public class ModuleVoWrapper extends VoWrapperImpl<Module, java.lang.String> {

	private static final long serialVersionUID = 1L;

	/**
	 * @see com.hsuforum.common.web.vo.impl.VoWrapperImpl#wrap(com.hsuforum.common.entity.BaseEntity)
	 */
	@Override
	public ModuleVo wrap(Module entity) {
		return new ModuleVo(entity);
	}
}