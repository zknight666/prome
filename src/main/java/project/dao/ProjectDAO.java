package project.dao;

import java.util.List;
import java.util.Map;

import project.bean.ProjectDTO;

public interface ProjectDAO {

	List<ProjectDTO> getAdminpage(Map<String, Object> map2);

	int getTotalA();

	void deleteProject(String title);

}
