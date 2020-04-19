package com.hsuforum.easportal.web.jsf.managed;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jasig.cas.client.authentication.AttributePrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import com.hsuforum.common.web.jsf.utils.JSFUtils;
import com.hsuforum.easportal.entity.Category;
import com.hsuforum.easportal.service.CategoryService;



/**
 * 控制左邊功能列表的ManagedBean
 * 
 * @author marvin.wc.hsu
 *
 */
@Component
@SessionScope
public class MenuManagedBean implements Serializable {

	private static final long serialVersionUID = -4355556086188442433L;
	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private CategoryService categoryService;
	
	private List<Category> categories;
	private String userId;
	
	public MenuManagedBean() {
		super();

	}

	@PostConstruct
	public void init() {

        // get user id
        AttributePrincipal principal = (AttributePrincipal)JSFUtils.getHttpServletRequest().getUserPrincipal();        
        Map attributes = principal.getAttributes();
        String userId=(String)attributes.get("sAMAccountName");
		//this.userId = JSFUtils.getHttpServletRequest().getRemoteUser();
        logger.info("login portal user id ="+userId);
        this.setUserId(userId.toUpperCase());
	}



	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public List<Category> getCategories() {
		if(this.categories==null){
			this.categories=this.getCategoryService().findByUserId(this.getUserId());
		}
		return this.categories;
	}



	

	

}
