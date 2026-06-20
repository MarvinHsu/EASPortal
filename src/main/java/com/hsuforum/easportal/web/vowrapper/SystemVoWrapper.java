package com.hsuforum.easportal.web.vowrapper;

import com.hsuforum.common.web.vo.impl.VoWrapperImpl;
import com.hsuforum.easportal.entity.System;
import com.hsuforum.easportal.web.vo.SystemVo;
/**
 * The wrapper transfer System to SystemVo
 * 
 */
public class SystemVoWrapper extends VoWrapperImpl<System, java.lang.String>{
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see com.hsuforum.common.web.vo.impl.VoWrapperImpl#wrap(com.hsuforum.common.entity.BaseEntity)
	 */
	@Override
	public SystemVo wrap(System entity) {
		return new SystemVo(entity);
	}
}