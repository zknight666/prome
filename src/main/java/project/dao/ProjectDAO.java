package project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import project.bean.ProjCardDTO;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

public interface ProjectDAO {
    List<ProjectDTO> getAdminpage(Map<String, Object> map2);

    public List<String> getChosenTech(int projectId);

    int getTotalA();

    void deleteProject(int projectId);

    List<UserDTO> getUserList();

    List<String> getBookmark(String user_id);
    void addBookmark(String user_id, String project_id);
    void deleteBookmark(String user_id, String project_id);

    List<Map<String, Object>> getSupportedProjects(String user_id);

    Map<String, List<String>> getMyTeams(String user_id);

    ProjCardDTO getProjectCard(String user_id, String project_id);

    ProjectDTO getProject(String project_id);

}
