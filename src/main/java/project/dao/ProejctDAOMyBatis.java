package project.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import project.bean.ProjectDTO;
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
    public void deleteProject(int projectId) {
        sqlSession.delete("userSQL.deleteProject", projectId);

    }


    @Override
    public List<ProjectDTO> getBookmark() {
        return sqlSession.selectList("projectSQL.getBookmark");
    }


	@Override
	public List<UserDTO> adminGetUserList(Map<String, Integer> map) {
		return sqlSession.selectList("projectSQL.adminGetUserList",map);
	}

	@Override
	public int getUserTotalA() {
		 return sqlSession.selectOne("projectSQL.getUserTotalA");
	}

	@Override
	public void adminDeleteUser(List<String> checkedUser) {
		sqlSession.delete("projectSQL.adminDeleteUser", checkedUser);
		
	}


}

