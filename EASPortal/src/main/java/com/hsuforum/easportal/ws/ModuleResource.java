package com.hsuforum.easportal.ws;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.service.ModuleService;
import com.hsuforum.easportal.ws.vo.ModuleWSVO2;

@RestController
@RequestMapping ("/rest/moduleResource")
public class ModuleResource {

	@Autowired
	private ModuleService moduleService;
	
	@GetMapping
	@ResponseBody
	public ModuleWSVO2[] findBySystem(@RequestParam(value = "systemCode") String systemCode) {

		

		if(StringUtils.isNotBlank(systemCode)){
			List<Module> modules = this.getModuleService().findBySystem(systemCode);
			ModuleWSVO2[] moduleWSVO2s = new ModuleWSVO2[modules.size()];
			int i=0;
			for(Module module : modules){
				ModuleWSVO2 moduleWSVO2 = new ModuleWSVO2(module);
				moduleWSVO2s[i]=moduleWSVO2;
				i++;
				
			}
			return moduleWSVO2s;
		} else {
			return null;
		}
	}
	

	public ModuleService getModuleService() {
		return moduleService;
	}




	public void setModuleService(ModuleService moduleService) {
		this.moduleService = moduleService;
	}



	
}
