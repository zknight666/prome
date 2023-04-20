package project.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< Updated upstream
=======
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.bean.ProjectDTO;
import project.service.ProjectService;
>>>>>>> Stashed changes

@Controller
@RequestMapping(value="project")
public class ProjectController {
	@Autowired
	private ProjectService projectService;
	
	

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
	
	
	
<<<<<<< Updated upstream
=======
	@GetMapping(value="adminpage")
	public String adminpage(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		return "project/adminpage";
	}
	
>>>>>>> Stashed changes
	
	@PostMapping(value="getAdminpage")
	@ResponseBody
	public Map<String, Object> getAdminpage(
			@RequestParam String field, 
			@RequestParam String recruit_state,
			@RequestParam String pg){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("field", field);
		map.put("recruit_state", recruit_state);
		map.put("pg", pg);
		
		return projectService.getAdminpage(map);
	}

	
	@PostMapping(value = "deleteProject")
	@ResponseBody
	public void deleteProject(@RequestParam String title) {
		projectService.deleteProject(title);
	}
	
	
}

