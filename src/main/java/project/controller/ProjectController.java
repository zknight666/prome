package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="project")
public class ProjectController {
	
	

	@GetMapping(value="buildProject")
	public String buildProject() {
		
		return "project/buildProject";
	}
	
	@GetMapping(value="project")
	public String project() {
		
		return "project/project";
	}
	
	@GetMapping(value="applicants")
	public String applicants() {
		
		return "project/applicants";
	}
	
	
	
	
	
	
}

