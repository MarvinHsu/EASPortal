package com.hsuforum.easportal.ws;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

@ApplicationPath("")
public class RESTApplication extends Application {
	private Set<Object> singletons = new HashSet<Object>();

	public RESTApplication() {
		//Add REST resource
		singletons.add(new UserResource());
		singletons.add(new ModuleResource());
	}

	@Override
	public Set<Object> getSingletons() {
		return singletons;
	}
}
