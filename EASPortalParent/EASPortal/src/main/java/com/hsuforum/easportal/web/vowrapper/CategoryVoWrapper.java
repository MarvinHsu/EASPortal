package com.hsuforum.easportal.web.vowrapper;

import com.hsuforum.common.web.vo.impl.VoWrapperImpl;
import com.hsuforum.easportal.entity.Category;
import com.hsuforum.easportal.web.vo.CategoryVo;
/**
 * The wrapper transfer Category to CategoryVo
 * 
 */
public class CategoryVoWrapper extends VoWrapperImpl<Category, java.lang.String>{
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see com.hsuforum.common.web.vo.impl.VoWrapperImpl#wrap(com.hsuforum.common.entity.BaseEntity)
	 */
	@Override
	public CategoryVo wrap(Category entity) {
		return new CategoryVo(entity);
	}
}