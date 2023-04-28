package project.dao;

import java.util.List;
import java.util.Map;

import project.bean.ApplicantsDTO;
import project.bean.ProjCardDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

public interface ProjectDAO {

    void adminDeleteProject(int projectId);

//    List<ProjectDTO> getBookmark();

	public void buildProject(ProjectDTO projectDTO);

	List<UserDTO> adminGetUserList(Map<String, Integer> map);

	int getUserTotalA();

	void adminDeleteUser(String checkedUser);

	List<ProjectMainpageDTO> getMainProjects();

	List<Integer> getProjectId(String team_leader);

	List<ApplicantsDTO> getApplicants(Integer ar);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);

    List<String> getBookmark(String user_id);
    void addBookmark(String user_id, String project_id);
    void deleteBookmark(String user_id, String project_id);

    List<Map<String, Object>> getSupportedProjects(String user_id);

    Map<String, List<String>> getMyTeams(String user_id);

    ProjCardDTO getProjectCard(String user_id, String project_id);

    ProjectDTO getProject(String project_id);

    int deleteApplication(String user_id, String project_id);
}
