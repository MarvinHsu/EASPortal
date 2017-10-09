package com.hsuforum.easportal.web.jsf.managed;

import java.io.IOException;
import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.ServletException;
/**
 * Logout managed bean
 * @author Marvin
 *
 */
@ManagedBean
@SessionScoped
public class LogoutManagedBean implements Serializable {

	private static final long serialVersionUID = -918579889145117388L;
	@ManagedProperty(value="#{logoutUrl}")
    private String logoutUrl;
	public String doLogoutAction() throws ServletException, IOException {

		final FacesContext context = FacesContext.getCurrentInstance();
		ExternalContext externalContext = context.getExternalContext();
		externalContext.invalidateSession();
		externalContext.redirect(this.getLogoutUrl());

		

		return null;
	}
	public String getLogoutUrl() {
		return logoutUrl;
	}
	public void setLogoutUrl(String logoutUrl) {
		this.logoutUrl = logoutUrl;
	}

}
