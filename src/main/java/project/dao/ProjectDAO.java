package project.dao;

import java.util.List;
import java.util.Map;

import project.bean.ApplicantsDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

public interface ProjectDAO {
    List<ProjectDTO> getAdminpage(Map<String, Object> map2);

    public List<String> getChosenTech(int projectId);

    void adminDeleteProject(int projectId);

    List<ProjectDTO> getBookmark();

	public void buildProject(ProjectDTO projectDTO);

	List<UserDTO> adminGetUserList(Map<String, Integer> map);

	int getUserTotalA();

	void adminDeleteUser(String checkedUser);

	List<ProjectMainpageDTO> getMainProjects();

	List<Integer> getProjectId(String team_leader);

	List<ApplicantsDTO> getApplicants(Integer ar);

	void acceptApplicants(List<String> checkedUser, String project_id);

	void declineApplicants(List<String> checkedUser, String project_id);

}
