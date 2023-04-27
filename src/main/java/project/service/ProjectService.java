package project.service;


import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import project.bean.ApplicantsDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

@Service
public interface ProjectService {
    public void buildProject(ProjectDTO projectDTO);

    Map<String, Object> getAdminpage(Map<String, Object> map);

    void adminDeleteProject(int projectId);

    Map<String, Object> adminGetUserList(String userPg);
    
    void adminDeleteUser(String checkedUser);

    List<ProjectDTO> getBookmark();

<<<<<<< HEAD
	public List<ProjectMainpageDTO> getMainProjects();
=======
    
    List<Object> getApplicants(String team_leader);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);

>>>>>>> origin/develop-mn


}
