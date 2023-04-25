package project.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import project.bean.ProjCardDTO;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

@Service
public interface ProjectService {
    void buildProject(ProjectDTO projectDTO);

    Map<String, Object> getAdminpage(Map<String, Object> map);

    void deleteProject(int projectId);

    List<UserDTO> getUserList();

    ProjCardDTO getProjectCard(String user_id, String project_id);

    List<String> getBookmark(String user_id);
    void addBookmark(String user_id, String project_id);
    void deleteBookmark(String user_id, String project_id);

    List<Map<String, Object>> getSupportedProjects(String user_id);

    Map<String, List<String>> getMyTeams(String user_id);
}
