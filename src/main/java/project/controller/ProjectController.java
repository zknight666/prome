package project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.bean.ProjCardDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.service.ProjectService;


@Controller
@RequestMapping(value="project")
public class ProjectController {
	@Autowired
	private ProjectService projectService;

	/*
	 * @GetMapping(value="buildProject") public String buildProject() {
	 * 
	 * return "project/buildProject"; }
	 */
	

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
	public String adminpage() {
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
	//북마크 추가
	@PostMapping(value="addBookmark")
	@ResponseBody
	public void addBookmark(
		//@SessionAttribute(name = "user_id", required = true) String user_id //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false) String user_id,
		@RequestParam String project_id) {

		projectService.addBookmark(user_id, project_id);
	}

	//북마크 제거
	@PostMapping(value="deleteBookmark")
	@ResponseBody
	public void deleteBookmark(
		//@SessionAttribute(name = "user_id", required = false) String user_id //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false) String user_id,
		@RequestParam String project_id) {

		projectService.deleteBookmark(user_id, project_id);
	}

	//Project Card 정보 가져오기
	@GetMapping(value = "projectCard")
	@ResponseBody
	public ProjCardDTO getProjectCard(
//		@SessionAttribute(name = "user_id", required = false) String user_id, //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false, defaultValue = "0") String user_id,
		@RequestParam String project_id) {
		return projectService.getProjectCard(user_id, project_id);
	}


	/* [관심목록, 지원한 프로젝트, My Team] 불러오기 */

	//mypage 1-관심목록    -> project_id가 들어있는 List<String> 리턴함

	@GetMapping(value="bookmark")
	@ResponseBody
	public List<String> getBookmark(
		//@SessionAttribute(name = "user_id", required = false) String user_id,//로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false) String user_id){

		return projectService.getBookmark(user_id);
	}


//	@GetMapping(value="bookmark")
//	@ResponseBody
//	public List<ProjectDTO> bookmark() {
//
//		return projectService.getBookmark();
//	}
	

	//mypage 2-지원한 프로젝트 	->project_id와 status(null이면 key로 안들어 있음) 들어있는 List<Map<String, Object>> 리턴.
	@GetMapping(value="supportedProjects")
	@ResponseBody
	public List<Map<String, Object>> getSupportedProjects(
		//@SessionAttribute(name = "user_id", required = false) String user_id //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false) String user_id){

		return projectService.getSupportedProjects(user_id);
	}


	//mypage 3-My Team
	@GetMapping(value="myTeams")
	@ResponseBody
	public Map<String, List<String>> getMyTeams(
		//@SessionAttribute(name = "user_id", required = false) String user_id //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id", required = false) String user_id){

		return projectService.getMyTeams(user_id);
	}

	@PostMapping(value="deleteApplication")
	@ResponseBody
	public int deleteApplication( //삭제된 행의 개수
		//@SessionAttribute(name = "user_id", required = true) String user_id //로그인 안했을 때에는 user_id에 null이 할당됨.
		@RequestParam(name = "user_id") String user_id,
		@RequestParam(name = "project_id") String project_id
	){
		return projectService.deleteApplication(user_id, project_id);
	}

}

