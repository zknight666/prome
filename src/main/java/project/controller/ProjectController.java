package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import project.bean.ProjectDTO;
import project.service.ProjectService;

@Controller
@RequestMapping(value="project")
public class ProjectController {
	
	

	@GetMapping(value="buildProject")
	public String buildProject() {
		
		return "project/buildProject";
	}
	
//	@PostMapping(value="buildProject_post")
//	@ResponseBody
//	public void buildProject_post(@ModelAttribute ProjectDTO projectDTO) {
//		ProjectService.buildProject_post(projectDTO);
//	}
	
	@GetMapping(value="project")
	public String project() {
		
		return "project/project";
	}
	
	@GetMapping(value="applicants")
	public String applicants() {
		
		return "project/applicants";
	}
	
	
	
	
	
	
}

