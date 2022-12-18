package com.hsuforum.easportal.web.jsf.managed;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jakarta.annotation.PostConstruct;
import jakarta.faces.context.FacesContext;
import jakarta.faces.event.ActionEvent;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apereo.cas.client.authentication.AttributePrincipal;
import org.primefaces.component.accordionpanel.AccordionPanel;
import org.primefaces.event.TabChangeEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import com.hsuforum.common.web.jsf.utils.JSFUtils;
import com.hsuforum.easportal.DefaultSetting;
import com.hsuforum.easportal.security.util.AAUtils;


import com.hsuforum.easportal.entity.Category;
import com.hsuforum.easportal.entity.Function;
import com.hsuforum.easportal.entity.Group;
import com.hsuforum.easportal.entity.GroupFunction;
import com.hsuforum.easportal.entity.User;
import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.service.CategoryService;
import com.hsuforum.easportal.service.ModuleService;



/**
 * 控制左邊功能列表的ManagedBean
 * 
 * @author marvin.wc.hsu
 *
 */
@Component
@SessionScope
public class MenuManagedBean implements Serializable {
	@Autowired
	private DefaultSetting defaultSetting;

	@Autowired
	private ModuleService moduleService;
	@Autowired
	private CategoryService categoryService;
	private User user;
	private List<Module> modules;
	private List<Category> categories;
	private String userId;

	public MenuManagedBean() {
		super();

	}

	@PostConstruct
	public void init() {

		Object obj = AAUtils.getLoggedInUser();
		if (obj instanceof User) {
			this.user = (User) obj;

			this.modules = this.getModuleService().findBySystem(this.defaultSetting.getSystemId());
			
			if (this.user != null && user.getAuthorities() != null && this.modules != null) {
				for (int i = 0; i < this.modules.size(); i++) {
					if (this.modules.get(i).getShowed() == true) {
						//use set to prevent duplication
						Set<Function> functions = new HashSet<Function>();
						for (GrantedAuthority grantedAuthority : user.getAuthorities()) {

							for (GroupFunction groupFunction : ((Group) grantedAuthority).getGroupFunctions()) {

								if (groupFunction.getFunction().getModule() != null && groupFunction.getFunction()
										.getModule().getCode().equals(this.modules.get(i).getCode())) {
									Iterator<Function> iter = this.modules.get(i).getFunctions().iterator();

									while (iter.hasNext()) {
										Function function = iter.next();
										if (groupFunction.getFunction().getCode().equals(function.getCode())
												&& function.getShowed() == true) {
											functions.add(function);
										}
									}

								}

							}
						}
						List<Function> functionsArrayList = new ArrayList<Function>();
						functionsArrayList.addAll(functions);
						Collections.sort(functionsArrayList, new Comparator<Function>() {
							public int compare(Function s1, Function s2) {

								return s1.getSequence().compareTo(s2.getSequence());

							}
						});

						this.modules.get(i).setFunctions(new LinkedHashSet<Function>(functionsArrayList));
					}
					//if module haven't any function. hidden it
					if(this.modules.get(i).getShowed() == true && CollectionUtils.isEmpty(this.modules.get(i).getFunctions())) {
						this.modules.get(i).setShowed(false);
					}

				}
			}
			this.setUserId(user.getAccount().toUpperCase());
		}
	}

	public void navigationListener(ActionEvent event) throws Exception {

		String obj = (String) event.getComponent().getAttributes().get("functionCode");

		// Remove managed bean of session
		FacesContext context = FacesContext.getCurrentInstance();
		context.getExternalContext().getSessionMap().remove("scopedTarget." + obj + "ManagedBean");

	}

	public boolean isGrant(String functionCode, String itemCode) {

		if (this.getDefaultSetting().getDevMode() == true) {
			return true;
		}
		if (this.getUser() != null && this.getUser().getAuthorities() != null) {
			for (GrantedAuthority grantedAuthority : this.getUser().getAuthorities()) {

				for (GroupFunction groupFunction : ((Group) grantedAuthority).getGroupFunctions()) {
					if (groupFunction.getFunctionItem().getCode().equals(itemCode)
							&& groupFunction.getFunction().getCode().equals(functionCode)) {
						return true;
					}
				}
			}
		}

		return false;
	}


	public ModuleService getModuleService() {
		return moduleService;
	}

	public void setModuleService(ModuleService moduleService) {
		this.moduleService = moduleService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Module> getModules() {
		return modules;
	}

	public void setModules(List<Module> modules) {
		this.modules = modules;
	}

	public DefaultSetting getDefaultSetting() {
		return defaultSetting;
	}

	public void setDefaultSetting(DefaultSetting defaultSetting) {
		this.defaultSetting = defaultSetting;
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
