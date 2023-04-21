package project.dao;

import java.util.List;
import java.util.Map;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

public interface ProjectDAO {
    List<ProjectDTO> getAdminpage(Map<String, Object> map2);

    public List<String> getChosenTech(int projectId);

    int getTotalA();

    void deleteProject(int projectId);

    List<UserDTO> getUserList();

    List<ProjectDTO> getBookmark();
}
