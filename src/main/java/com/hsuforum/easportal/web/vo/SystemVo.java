package com.hsuforum.easportal.web.vo;


import com.hsuforum.common.web.vo.impl.ValueObjectImpl;
import com.hsuforum.easportal.entity.System;


/**
 * System's Value Object Implement
 * 
 */
public class SystemVo extends ValueObjectImpl<System, java.lang.String>{
	
	private static final long serialVersionUID = 1L;		

	/**
	 * Constructor
	 * 
	 */
	public SystemVo() {
		super(new System());
	}

	/**
	 * Constructor
	 * @param bo Business Object
	 */
	public SystemVo (System bo) {
		super(bo);
	}


	



}
