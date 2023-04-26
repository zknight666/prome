package project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.sf.json.JSONArray;
import project.bean.ApplicantsDTO;
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
        return sqlSession.selectList("projectSQL.getChosenTech", projectId);
    }


    @Override
    public void adminDeleteProject(int projectId) {
        sqlSession.delete("userSQL.adminDeleteProject", projectId);

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
	public void adminDeleteUser(String checkedUser) {
		System.out.println("dao = " +checkedUser);
		
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode;
		try {
			jsonNode = objectMapper.readTree(checkedUser);
			String[] array = objectMapper.convertValue(jsonNode.get("checkedUser"), String[].class);
			for(String ar : array) {
				System.out.println(ar);
				sqlSession.delete("projectSQL.adminDeleteUser", ar);	
			}
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
				
	}

	@Override
	public List<Integer> getProjectId(String team_leader) {
		return sqlSession.selectList("projectSQL.getProjectId", team_leader);
	}
	

/*	@Override
	public List<ApplicantsDTO> getApplicants(Integer ar) {
		System.out.println(ar);
		return sqlSession.selectList("projectSQL.getApplicants", ar);
	}
*/	
	@Override
	public List<ApplicantsDTO> getApplicants(Integer ar) {
		System.out.println(ar);
		return sqlSession.selectList("projectSQL.getApplicants", ar);
	}




}

