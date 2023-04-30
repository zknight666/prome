package project.dao;

import java.util.List;
import java.util.Map;

import project.bean.ApplicantsDTO;
import project.bean.ProjCardDTO;
import project.bean.ProjDetailDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

public interface ProjectDAO {
    List<ProjectDTO> getAdminpage(Map<String, Object> map2);

    List<String> getChosenTech(int projectId);

    void adminDeleteProject(int projectId);

//    List<ProjectDTO> getBookmark();

	void buildProject(ProjectDTO projectDTO);

	List<UserDTO> adminGetUserList(Map<String, Integer> map);

	int getUserTotalA();
	
	int getProjectTotalA();

	void adminDeleteUser(String checkedUser);

	List<ProjectMainpageDTO> getMainProjects(Map<String, Integer> map5);

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

    void writeApplication(String user_id, Map<String, Object> map);

    //명연 Start
    List<UserDTO> getUserList();
    //명연 End

    ProjDetailDTO getProjectDetail(String project_id);


}
