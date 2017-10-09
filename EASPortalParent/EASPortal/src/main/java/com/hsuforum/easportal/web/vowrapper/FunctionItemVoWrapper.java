package com.hsuforum.easportal.web.vowrapper;

import com.hsuforum.common.web.vo.impl.VoWrapperImpl;
import com.hsuforum.easportal.entity.FunctionItem;
import com.hsuforum.easportal.web.vo.FunctionItemVo;

/**
 * The wrapper transfer FunctionItem to FunctionItemVo
 * @author Marvin
 */
public class FunctionItemVoWrapper extends VoWrapperImpl<FunctionItem, java.lang.String> {

	private static final long serialVersionUID = 1L;

	/**
	 * @see com.hsuforum.common.web.vo.impl.VoWrapperImpl#wrap(com.hsuforum.common.entity.BaseEntity)
	 */
	@Override
	public FunctionItemVo wrap(FunctionItem entity) {
		return new FunctionItemVo(entity);
	}
}