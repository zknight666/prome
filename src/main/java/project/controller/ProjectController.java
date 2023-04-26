package project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;

import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.service.ProjectService;
import user.bean.UserDTO;

<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.bean.ProjectDTO;
import project.service.ProjectService;
import user.bean.UserDTO;

=======
>>>>>>> origin/develop-buildproject

@Controller
@RequestMapping(value="project")
public class ProjectController {
	@Autowired
	private ProjectService projectService;
	

	@GetMapping(value="buildProject")
	public String buildProject() {
		
		return "project/buildProject";
	}
	

	@PostMapping(value="buildProject")
	@ResponseBody
	public void buildProject(@RequestBody ProjectDTO projectDTO) {
		
		projectService.buildProject(projectDTO);
	}

	
	@GetMapping(value="getMainProjects")
	@ResponseBody
	public List<ProjectMainpageDTO> getMainProjects() {
		return projectService.getMainProjects();
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



	@PostMapping(value = "adminDeleteProject")
	@ResponseBody
	public void adminDeleteProject(@RequestParam int projectId) {
		System.out.println(projectId);
		projectService.adminDeleteProject(projectId);
	}

	
	@GetMapping(value = "adminUserPage")
	public String adminUserList(@RequestParam(required = false, defaultValue = "1") String userPg, Model model) {
		model.addAttribute("userPg", userPg); //"pg"라는 이름으로 pg 값을 담음
		return "project/adminUserPage"; //pg값을 담아서 여기로 간다
	}

	@PostMapping(value = "adminGetUserList")
	@ResponseBody // dispatcher로 가지않게 하고, json으로 변환도 시켜줌!!!!!
	public Map<String, Object> adminGetUserList(@RequestParam String userPg) {

		return projectService.adminGetUserList(userPg);
	}

	
	@PostMapping(value="adminDeleteUser")
	@ResponseBody
	public void adminDeleteUser(@RequestBody String checkedUser) {
		System.out.println("controller = "+checkedUser);
		
		projectService.adminDeleteUser(checkedUser);
	}
	
	
	//mypage
<<<<<<< HEAD

	@GetMapping(value="bookmark")
	@ResponseBody
	public List<ProjectDTO> bookmark() {

		return projectService.getBookmark();
	}
=======
//	@GetMapping(value="bookmark")
//	@ResponseBody
//	public List<ProjectDTO> bookmark() {
//
//		return projectService.getBookmark();
//	}
	
	

	
>>>>>>> origin/develop-buildproject
}

