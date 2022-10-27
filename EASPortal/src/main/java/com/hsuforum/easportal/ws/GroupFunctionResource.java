package com.hsuforum.easportal.ws;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hsuforum.easportal.entity.GroupFunction;
import com.hsuforum.easportal.service.GroupFunctionService;
import com.hsuforum.easportal.ws.vo.GroupFunctionWSVO;
@RestController
@RequestMapping ("/rest/groupFunctionResource")
public class GroupFunctionResource {
	@Autowired
	private GroupFunctionService groupFunctionService;
	@GetMapping
	@ResponseBody
	public GroupFunctionWSVO[] findBySystem(@RequestParam(value = "systemCode") String systemCode) {

		

		if(StringUtils.isNotBlank(systemCode)){
			List<GroupFunction> groupFunctions = this.groupFunctionService.findBySystem(systemCode);
			GroupFunctionWSVO[] groupFunctionWSVOs = new GroupFunctionWSVO[groupFunctions.size()];
			int i=0;
			for(GroupFunction groupFunction : groupFunctions){
				GroupFunctionWSVO groupFunctionWSVO = new GroupFunctionWSVO(groupFunction);
				groupFunctionWSVOs[i]=groupFunctionWSVO;
				i++;
				
			}
			return groupFunctionWSVOs;
		} else {
			return null;
		}
	}
	public GroupFunctionService getGroupFunctionService() {
		return groupFunctionService;
	}
	public void setGroupFunctionService(GroupFunctionService groupFunctionService) {
		this.groupFunctionService = groupFunctionService;
	}
	
	
}
