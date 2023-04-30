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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import project.bean.ProjCardDTO;
import project.bean.ProjDetailDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.service.ProjectService;
import user.bean.UserDTO;


@Controller
@SessionAttributes("user_id")
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
	public Map<String, Object> getMainProjects(@RequestParam(required=false, defaultValue="1") String projectPg) {
		return projectService.getMainProjects(projectPg);
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
	public void acceptApplicants(@RequestParam("checkedUser") List<String> checkedUser,
		@RequestParam(value = "project_id") String project_id) {
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
	@RequestMapping(value="adminpage", method = RequestMethod.GET)
	public String adminpage(@RequestParam(required = false, defaultValue = "1") String projectPg, Model model) {
		model.addAttribute("projectPg",projectPg);
		return "project/adminpage";	
	}
	
	@GetMapping(value="getAdminpage")
	@ResponseBody
	public Map<String, Object> getAdminpage(@RequestParam(required=false, defaultValue="1") String projectPg) {
		return projectService.getMainProjects(projectPg);
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
		@SessionAttribute("user_id") String user_id, //required=true, 세션에서 로그인한 User의 id 받아옴.
//		@RequestParam(name = "user_id", required = false) String user_id,
		@RequestParam String project_id) {

		projectService.addBookmark(user_id, project_id);
	}

	//북마크 제거
	@PostMapping(value="deleteBookmark")
	@ResponseBody
	public void deleteBookmark(
		@SessionAttribute("user_id") String user_id,
//		@RequestParam(name = "user_id", required = false) String user_id,
		@RequestParam String project_id) {

		projectService.deleteBookmark(user_id, project_id);
	}

	//Project Card 정보 가져오기
	@GetMapping(value = "projectCard")
	@ResponseBody
	public ProjCardDTO getProjectCard(
		@SessionAttribute("user_id") String user_id,
//		@RequestParam(name = "user_id", required = false, defaultValue = "0") String user_id,
		@RequestParam String project_id) {
		return projectService.getProjectCard(user_id, project_id);
	}


	/* [관심목록, 지원한 프로젝트, My Team] 불러오기 */

	//mypage 1-관심목록    -> project_id가 들어있는 List<String> 리턴함

	@GetMapping(value="bookmark")
	@ResponseBody
	public List<String> getBookmark(
		@SessionAttribute("user_id") String user_id
//		@RequestParam(name = "user_id", required = false) String user_id
	){

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
		@SessionAttribute("user_id") String user_id
//		@RequestParam(name = "user_id", required = false) String user_id
	){

		return projectService.getSupportedProjects(user_id);
	}


	//mypage 3-My Team
	@GetMapping(value="myTeams")
	@ResponseBody
	public Map<String, List<String>> getMyTeams(
		@SessionAttribute("user_id") String user_id
//		@RequestParam(name = "user_id", required = false) String user_id
	){

		return projectService.getMyTeams(user_id);
	}

	@PostMapping(value="deleteApplication")
	@ResponseBody
	public int deleteApplication( //삭제된 행의 개수
		@SessionAttribute("user_id") String user_id,
//		@RequestParam(name = "user_id") String user_id,
		@RequestParam(name = "project_id") String project_id
	){
		return projectService.deleteApplication(user_id, project_id);
	}

	@PostMapping(value="writeApplication")
	@ResponseBody
	public void writeApplication( //삭제된 행의 개수
		@SessionAttribute("user_id") String user_id,
		//user_id를 세션에서 꼭 받아와 줘야 함
		@RequestParam Map<String,Object> map //project_id, app_field, reason
	){
		projectService.writeApplication(user_id, map);
	}


	//-------------------------------------------------------------------------------------------------------
	//명연님 Start

	@GetMapping(value="getProject")
	@ResponseBody
	public ProjectDTO project(@RequestParam String project_id) {
		return projectService.getProject(project_id);
	}

	@GetMapping(value="project")
	public String project(@RequestParam String project_id, Model model) {
		model.addAttribute("project_id", project_id);
		return "project/projectDetail";
	}


	@GetMapping(value = "userList")
	@ResponseBody
	public List<UserDTO> getUserList() {
		return projectService.getUserList();
	}

	//명연님 End
	//-------------------------------------------------------------------------------------------------------

	//Project 상세페이지 정보 가져오기
	@GetMapping(value = "projectDetail")
	@ResponseBody
	public ProjDetailDTO getProjectDetail(@RequestParam String project_id) {
		return projectService.getProjectDetail(project_id);
	}



}

