package com.hsuforum.easportal.web.jsf.managed;

import java.io.IOException;
import java.io.Serializable;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;
/**
 * Logout managed bean
 * @author Marvin
 *
 */
@Component
@SessionScope
public class LogoutManagedBean implements Serializable {

	private static final long serialVersionUID = -918579889145117388L;
	@Autowired
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
