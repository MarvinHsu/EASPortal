package com.hsuforum.easportal.ws;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hsuforum.easportal.entity.Module;
import com.hsuforum.easportal.service.ModuleService;
import com.hsuforum.easportal.web.config.WSConfigBean;
import com.hsuforum.easportal.ws.vo.ModuleWSVO2;

@Component
@Path("moduleResource")
public class ModuleResource {
	@Autowired
	private WSConfigBean wsConfigBean;
	@Autowired
	private ModuleService moduleService;
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Response findBySystem(@QueryParam(value = "systemCode") String systemCode) {

		

		if(StringUtils.isNotBlank(systemCode)){
			List<Module> modules = this.getModuleService().findBySystem(systemCode);
			ModuleWSVO2[] moduleWSVO2s = new ModuleWSVO2[modules.size()];
			int i=0;
			for(Module module : modules){
				ModuleWSVO2 moduleWSVO2 = new ModuleWSVO2(module);
				moduleWSVO2s[i]=moduleWSVO2;
				i++;
				
			}
			return Response.ok().entity(moduleWSVO2s).build();
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

	public ModuleService getModuleService() {
		return moduleService;
	}




	public void setModuleService(ModuleService moduleService) {
		this.moduleService = moduleService;
	}



	
}
