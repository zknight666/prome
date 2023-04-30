package project.service;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import project.bean.ProjCardDTO;
import project.bean.ProjDetailDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

@Service
public interface ProjectService {
    public void buildProject(ProjectDTO projectDTO);

    void adminDeleteProject(int projectId);

    Map<String, Object> adminGetUserList(String userPg);
    
    void adminDeleteUser(String checkedUser);

    List<Object> getApplicants(String team_leader);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);

    ProjCardDTO getProjectCard(String user_id, String project_id);

    List<String> getBookmark(String user_id);
   
    void addBookmark(String user_id, String project_id);
    
    void deleteBookmark(String user_id, String project_id);

    List<Map<String, Object>> getSupportedProjects(String user_id);

    Map<String, List<String>> getMyTeams(String user_id);

    int deleteApplication(String user_id, String project_id);

    void writeApplication(String user_id, Map<String, Object> map);

    //-------------------------------------------------------------------------------------------------------
    //명연님 Start
    List<UserDTO> getUserList();

    ProjectDTO getProject(String project_id);

    //명연님 End
    //-------------------------------------------------------------------------------------------------------

    ProjDetailDTO getProjectDetail(String project_id);

	Map<String, Object> getMainProjects(String projectPg);

    void updateApplicationStatus(Map<String,Object> param_map);

	

}
