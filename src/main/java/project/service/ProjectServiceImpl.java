package project.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.bean.ProjectPaging;
import project.dao.ProjectDAO;
import user.bean.UserDTO;


@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectDAO projectDAO;
    @Autowired
    private ProjectPaging projectPaging;
    
    @Autowired
    HttpSession session;

    
    
    
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
    
    
    @Override
    public Map<String, Object> getAdminpage(Map<String, Object> map) {
        int endNum = Integer.parseInt((String)map.get("pg")) * 12;
        int startNum = endNum - 11;

        Map<String, Object> map2 = new HashMap<String, Object>();
        map2.put("startNum", startNum);
        map2.put("endNum", endNum);
        map2.put("field", map.get("field"));
        map2.put("recruit_state", map.get("recruit_state"));

        List<ProjectDTO> list = projectDAO.getAdminpage(map2);

        // 특정 프로젝트의 선택된 기술 가져오기
        int projectId = Integer.parseInt((String)map.get("projectId"));
        List<String> chosenTech = projectDAO.getChosenTech(projectId);

        //페이징 처리
        int totalA = projectDAO.getTotalA(); //총글수

        projectPaging.setCurrentPage(Integer.parseInt((String)map.get("pg")));
        projectPaging.setPageBlock(3);
        projectPaging.setPageSize(3);
        projectPaging.setTotalA(totalA);

        projectPaging.makePagingHTML();

        Map<String, Object> map3 = new HashMap<String, Object>();
        map3.put("list", list);
        map3.put("chosenTech", chosenTech);
        map3.put("projectPaging", projectPaging);

        return map3;
    }

    @Override
    public void deleteProject(int projectId) {
        projectDAO.deleteProject(projectId);
    }

    @Override
    public List<UserDTO> getUserList() {
        return projectDAO.getUserList();
    }


	@Override
	public List<ProjectMainpageDTO> getMainProjects() {
		// TODO Auto-generated method stub
		return projectDAO.getMainProjects();
	}


//    @Override
//    public List<ProjectDTO> getBookmark() {
//        return projectDAO.getBookmark();
//    }
	

}
