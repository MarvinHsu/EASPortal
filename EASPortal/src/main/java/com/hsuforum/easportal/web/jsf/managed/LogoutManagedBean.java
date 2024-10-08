package com.hsuforum.easportal.web.jsf.managed;

import java.io.IOException;
import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.servlet.ServletException;
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
