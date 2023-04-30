package project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.bean.ApplicantsDTO;
import project.bean.ProjCardDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.bean.ProjectPaging;
import project.dao.ProjectDAO;
import user.bean.UserDTO;
import user.bean.UserPaging;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDAO projectDAO;
	@Autowired
	private ProjectPaging projectPaging;

	@Autowired
	HttpSession session;

	@Autowired
	private UserPaging userPaging;
    



    @Override
    public Map<String, Object> getMainProjects(String projectPg) {
    	
    	
    	int endNum = Integer.parseInt(projectPg) * 12;
    	int startNum = endNum - 11;		
    	
    	Map<String, Integer> map5 = new HashMap<String, Integer>();
    	map5.put("startNum", startNum);
    	map5.put("endNum", endNum);
    	
    	List<ProjectMainpageDTO> list = projectDAO.getMainProjects(map5);
    	
    	
    	//페이징 처리
    	int totalA = projectDAO.getProjectTotalA(); //총 프로젝트 수
    	
    	projectPaging.setCurrentPage(Integer.parseInt(projectPg));
    	projectPaging.setPageBlock(3);
    	projectPaging.setPageSize(12);
    	projectPaging.setTotalA(totalA);
    	
    	projectPaging.makePagingHTML();
    	
    	Map<String, Object> map6 = new HashMap<String, Object>();
    	map6.put("list", list);
    	map6.put("projectPaging", projectPaging);
    	
    	return map6;
    }


    @Override
    public List<String> getBookmark(String user_id) {
        return projectDAO.getBookmark(user_id);
    }
//    @Override
//	public List<ProjectDTO> getBookmark() {
//		// TODO Auto-generated method stub
//		return null;
//	}

	
    @Override
    public void buildProject(ProjectDTO projectDTO) {
    	 projectDTO.setMember_joined(0);
    	 int member_need = 0;
    	 
    	    for (String recruitCount : projectDTO.getRecruitCounts()) {
    	    	member_need += Integer.parseInt(recruitCount);
    	    }
    	    projectDTO.setMember_need(member_need);
    	    
    	    
    	    if (projectDTO.getMember_joined() == projectDTO.getMember_need()) {
    	        projectDTO.setRecruit_state("finish");
    	    } else {
    	        projectDTO.setRecruit_state("ing");
    	    } 
    	    System.out.println("Title: " + projectDTO.getTitle());
            System.out.println("Field: " + projectDTO.getField());
            System.out.println("Content: " + projectDTO.getContent());
            System.out.println("Start Date: " + projectDTO.getStart_date());
            System.out.println("Due Date: " + projectDTO.getDue_date());
            System.out.println("Member Joined: " + projectDTO.getMember_joined());
            System.out.println("Member Need: " + projectDTO.getMember_need());
            System.out.println("Recruit state: " + projectDTO.getRecruit_state());
            System.out.println("Tech Stacks: " + projectDTO.getTech_stacks());
            System.out.println("RecruitmentFields: " + projectDTO.getRecruitmentFields());
            System.out.println("RecruitCounts: " + projectDTO.getRecruitCounts());

    	projectDAO.buildProject(projectDTO);
    }  



	//--------------- adminpage 관리자 페이지 --------------------------
	

	
	
	@Override
	public void adminDeleteProject(int projectId) {
		System.out.println("service = " +projectId);
		projectDAO.adminDeleteProject(projectId);
	}



	@Override
	public Map<String, Object> adminGetUserList(String userPg) {
		int endNum = Integer.parseInt(userPg) * 10;
		int startNum = endNum - 9;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		List<UserDTO> list = projectDAO.adminGetUserList(map);

		// 페이징 처리
		int totalA = projectDAO.getUserTotalA(); // 총 user

		userPaging.setCurrentPage(Integer.parseInt(userPg));
		userPaging.setPageBlock(3);
		userPaging.setPageSize(10);
		userPaging.setTotalA(totalA);

		userPaging.makePagingHTML();

		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("list", list);
		map2.put("userPaging", userPaging);

		return map2;
	}

	@Override
	public void adminDeleteUser(String checkedUser) {
		projectDAO.adminDeleteUser(checkedUser);
	}
	
	//--------------------------------------------------------------
	
	
	
	//-----------applicants 신청서 - 프로젝트 생성자 페이지------------------
	@Override
	public List<Object> getApplicants(String team_leader) {
		
		List<Integer> list =  projectDAO.getProjectId(team_leader);
		System.out.println(list);
		
	
			
	    List<Object> totalList = new ArrayList<>();
	    for(Integer ar : list) {
	        List<ApplicantsDTO> list2 = projectDAO.getApplicants(ar);
	        System.out.println("list2 = " + list2);
	        if(!list2.isEmpty()) 
	        	totalList.add(list2);	       
	    }
	    System.out.println("totalList = " + totalList);
	    return totalList;
	}


	@Override
	public void acceptApplicants(List<String> checkedUser, String project_id) {
		projectDAO.acceptApplicants(checkedUser, project_id);	
		
	}

	@Override
	public void declineApplicants(List<String> checkedUser, String project_id) {
		projectDAO.declineApplicants(checkedUser, project_id);	
		
	}
	//---------------------------------------------------

//    @Override
//    public List<ProjectDTO> getBookmark() {
//        return projectDAO.getBookmark();
//    }

    @Override
    public void addBookmark(String user_id, String project_id) {
        projectDAO.addBookmark(user_id, project_id);
    }

    @Override
    public void deleteBookmark(String user_id, String project_id) {
        projectDAO.deleteBookmark(user_id, project_id);
    }

    @Override
    public List<Map<String, Object>> getSupportedProjects(String user_id) {
        return projectDAO.getSupportedProjects(user_id);
    }

    @Override
    public Map<String, List<String>> getMyTeams(String user_id) {
        return projectDAO.getMyTeams(user_id);
    }


    @Override
    public ProjCardDTO getProjectCard(String user_id, String project_id) {
        return projectDAO.getProjectCard(user_id, project_id);
    }

    @Override
    public int deleteApplication(String user_id, String project_id) {
        return projectDAO.deleteApplication(user_id, project_id);
    }
//

	
}
