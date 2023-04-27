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

import project.bean.ApplicantsDTO;
import project.bean.ProjectDTO;
import project.service.ProjectService;
import user.bean.UserDTO;

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
	
	@PostMapping(value="buildProject")
	@ResponseBody
	public void buildProject(@ModelAttribute ProjectDTO projectDTO) {
		projectService.buildProject(projectDTO);
	}
	
	@GetMapping(value="project")
	public String project() {
		
		return "project/project";
	}
	
	//---------- applicants 신청서 - 프로젝트 생성자 페이지 ---------------
	@GetMapping(value="applicants")
	public String applicants() {
		return "project/applicants";
	}
	
	
	@PostMapping(value="getApplicants")
	@ResponseBody
	public List<Object> getApplicants(@RequestParam String team_leader) {
		System.out.println(team_leader);
		return projectService.getApplicants(team_leader);
	}
	
	
	@PostMapping(value="acceptApplicants")
	@ResponseBody
	public void acceptApplicants(@RequestParam("checkedUser") List<String> checkedUser, @RequestParam(value = "project_id") String project_id) {
	    System.out.println(checkedUser);
	    System.out.println(project_id);
	    projectService.acceptApplicants(checkedUser, project_id);
	}
	
	@PostMapping(value="declineApplicants")
	@ResponseBody
	public void declineApplicants(@RequestParam("checkedUser") List<String> checkedUser, @RequestParam(value = "project_id") String project_id) {
	    System.out.println(checkedUser);
	    System.out.println(project_id);
	    projectService.declineApplicants(checkedUser, project_id);
	}
	
	//-----------------------------------------------------

	
	//-------------- adminpage 관리자 페이지 ---------------------
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
	
	//-----------------------------------------------------
	
	
	//mypage
	@GetMapping(value="bookmark")
	@ResponseBody
	public List<ProjectDTO> bookmark() {

		return projectService.getBookmark();
	}
	 
}

