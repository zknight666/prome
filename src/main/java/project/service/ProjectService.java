package project.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

@Service
public interface ProjectService {
    void buildProject(ProjectDTO projectDTO);

    Map<String, Object> getAdminpage(Map<String, Object> map);

    void adminDeleteProject(int projectId);

    Map<String, Object> adminGetUserList(String userPg);
    
    void adminDeleteUser(String checkedUser);

    
    List<ProjectDTO> getBookmark();



}
