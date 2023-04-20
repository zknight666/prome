package project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import project.bean.ProjectDTO;

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

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("userSQL.getTotalA");
	}

	@Override
	public void deleteProject(String title) {
		sqlSession.delete("userSQL.deleteProject", title);
		
	}

}
