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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttribute;
import project.bean.ProjCardDTO;
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

	@PostMapping(value="adminpage")
	@ResponseBody
	public Map<String, Object> adminpage(
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


	@GetMapping(value = "userList")
	@ResponseBody
	public List<UserDTO> getUserList() {
		return projectService.getUserList();
	}

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

