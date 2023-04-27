package project.service;


import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
<<<<<<< HEAD

import project.bean.ApplicantsDTO;
=======
import project.bean.ProjCardDTO;
>>>>>>> origin/develop-mypage
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

<<<<<<< HEAD
    List<ProjectDTO> getBookmark();

	public List<ProjectMainpageDTO> getMainProjects();

    List<Object> getApplicants(String team_leader);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);

=======
    ProjCardDTO getProjectCard(String user_id, String project_id);

    List<String> getBookmark(String user_id);
    void addBookmark(String user_id, String project_id);
    void deleteBookmark(String user_id, String project_id);

    List<Map<String, Object>> getSupportedProjects(String user_id);

    Map<String, List<String>> getMyTeams(String user_id);

    int deleteApplication(String user_id, String project_id);
>>>>>>> origin/develop-mypage
}
