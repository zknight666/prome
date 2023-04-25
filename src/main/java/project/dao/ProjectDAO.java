package project.dao;

import java.util.List;
import java.util.Map;
import project.bean.ProjectDTO;
import user.bean.UserDTO;

public interface ProjectDAO {
    List<ProjectDTO> getAdminpage(Map<String, Object> map2);

    public List<String> getChosenTech(int projectId);


    void adminDeleteProject(int projectId);


    List<ProjectDTO> getBookmark();

<<<<<<< HEAD
	public void buildProject(ProjectDTO projectDTO);

=======

	List<UserDTO> adminGetUserList(Map<String, Integer> map);

	int getUserTotalA();

	void adminDeleteUser(String checkedUser);
>>>>>>> origin/develop-mn
}
