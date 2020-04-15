package com.hsuforum.easportal.ws;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hsuforum.easportal.entity.User;
import com.hsuforum.easportal.service.UserService;
import com.hsuforum.easportal.web.config.WSConfigBean;
import com.hsuforum.easportal.ws.vo.UserWSVO;

@Component
@Path("userResource")
public class UserResource {
	@Autowired
	private WSConfigBean wsConfigBean;
	@Autowired
	private UserService userService;
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Response findBySystemUser(@QueryParam(value = "account") String account, @QueryParam(value = "systemCode") String systemCode) {

		

		if(StringUtils.isNotBlank(account)&&StringUtils.isNotBlank(systemCode)){
			User user = this.getUserService().findBySystemUser(systemCode, account);
			UserWSVO userWSVO = new UserWSVO(user);
			

			return Response.ok().entity(userWSVO).build();
		} else {
			return Response.serverError().build();
		}
	}
	
	
	
	
	public WSConfigBean getWsConfigBean() {
		return wsConfigBean;
	}
	public void setWsConfigBean(WSConfigBean wsConfigBean) {
		this.wsConfigBean = wsConfigBean;
	}




	public UserService getUserService() {
		return userService;
	}




	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	
	
	
	
	
	
	
	
	
	
}
