package project.service;

import java.util.Map;

public interface ProjectService {

	Map<String, Object> getAdminpage(Map<String, Object> map);

	void deleteProject(String title);

	


}
