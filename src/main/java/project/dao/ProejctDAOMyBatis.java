package project.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class ProejctDAOMyBatis implements ProjectDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<ProjectDTO> getAdminpage(Map<String, Object> map2) {
        if(map2.get("recruit_state")=="") {
            return sqlSession.selectList("projectSQL.getAdminpage1", map2);
        }else
            return sqlSession.selectList("projectSQL.getAdminpage2", map2);
    }

    public List<String> getChosenTech(int projectId) {
        return sqlSession.selectList("getChosenTech", projectId);
    }

    @Override
    public int getTotalA() {
        return sqlSession.selectOne("userSQL.getTotalA");
    }

    @Override
    public void deleteProject(int projectId) {
        sqlSession.delete("userSQL.deleteProject", projectId);

    }

    @Override
    public List<UserDTO> getUserList() {
        return sqlSession.selectList("userSQL.getUserList");
    }

    @Override
    public List<ProjectDTO> getBookmark() {
        return sqlSession.selectList("projectSQL.getBookmark");
    }

	@Override
	public void buildProject(ProjectDTO projectDTO) {
//		sqlSession.insert("projectSQL.writeProject",projectDTO);
//		sqlSession.insert("projectSQL.project_tech_stack",projectDTO);
//		sqlSession.insert("projectSQL.recruitment_field",projectDTO);
		
		sqlSession.insert("projectSQL.buildProject",projectDTO);
		
	}

	@Override
	public List<ProjectMainpageDTO> getMainProjects() {
		
		List<ProjectMainpageDTO>  list = sqlSession.selectList("projectSQL.getMainProjects");
		System.out.println(list.get(0).getTitle()  + ", " + list.get(0).getRecruitmentFields() + ", " + list.get(0).getTechstacks());
		return list;
		
		
		
	}


}

