package com.hsuforum.easportal.ws;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hsuforum.easportal.entity.User;
import com.hsuforum.easportal.service.UserService;
import com.hsuforum.easportal.web.config.WSConfigBean;
import com.hsuforum.easportal.ws.vo.UserWSVO;

@RestController
@RequestMapping("/rest/userResource")
public class UserResource {
	@Autowired
	private WSConfigBean wsConfigBean;
	@Autowired
	private UserService userService;
	
	@GetMapping
	@ResponseBody
	public UserWSVO findBySystemUser(@RequestParam(value = "account") String account, @RequestParam(value = "systemCode") String systemCode) {

		

		if(StringUtils.isNotBlank(account)&&StringUtils.isNotBlank(systemCode)){
			User user = this.getUserService().findBySystemUser(systemCode, account);
			UserWSVO userWSVO = new UserWSVO(user);
			

			return userWSVO;
		} else {
			return null;
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
