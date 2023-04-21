package project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.bean.ProjectDTO;
import project.service.ProjectService;
import user.bean.UserDTO;


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
	
	
	
	@GetMapping(value="adminpage")
	public String adminpage(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		return "project/adminpage";
	}
	
	
	@PostMapping(value="getAdminpage")
	@ResponseBody
	public Map<String, Object> getAdminpage(
			@RequestParam String field, 
			@RequestParam String recruit_state,
			@RequestParam int projectId,
			@RequestParam String pg){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("field", field);
		map.put("recruit_state", recruit_state);
		map.put("projectId", projectId);
		map.put("pg", pg);
		
		return projectService.getAdminpage(map);
	}

	
	@PostMapping(value = "deleteProject")
	@ResponseBody
	public void deleteProject(@RequestParam int projectId) {
		projectService.deleteProject(projectId);
	}
	
	
	@GetMapping(value = "userlist")
	public String userlist() {
		return "project/adminpage";
	}
	
	
	@PostMapping(value = "getUserList")
	@ResponseBody
	public List<UserDTO> getUserList() {
		return projectService.getUserList();
	}
	
	
	@PostMapping(value="deleteUser")
	@ResponseBody
	public 
}

