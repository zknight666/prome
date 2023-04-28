package project.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import project.bean.ApplicantsDTO;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

@Service
public interface ProjectService {
    void buildProject(ProjectDTO projectDTO);


    void adminDeleteProject(int projectId);

    Map<String, Object> adminGetUserList(String userPg);
    
    void adminDeleteUser(String checkedUser);

    
    List<ProjectDTO> getBookmark();

    
    List<Object> getApplicants(String team_leader);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);



}
