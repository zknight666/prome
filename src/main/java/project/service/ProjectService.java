package project.service;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface ProjectService {

	Map<String, Object> getAdminpage(Map<String, Object> map);

	void deleteProject(int projectId);

	List<UserDTO> getUserList();

	


}
