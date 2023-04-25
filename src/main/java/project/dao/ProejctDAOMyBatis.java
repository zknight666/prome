package project.dao;

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
    public void adminDeleteProject(int projectId) {
        sqlSession.delete("userSQL.adminDeleteProject", projectId);

    }


    @Override
    public List<ProjectDTO> getBookmark() {
        return sqlSession.selectList("projectSQL.getBookmark");
    }

	@Override
	public void buildProject(ProjectDTO projectDTO) {
		sqlSession.insert("projectSQL.writeProject",projectDTO);
		sqlSession.insert("projectSQL.project_tech_stack",projectDTO);
		sqlSession.insert("projectSQL.recruitment_field",projectDTO);
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
		

/*
		try {
			String[] array = objectMapper.readValue(checkedUser, String[].class);
			for(String print : array) {
				System.out.println(print);
				
			}
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
//		String array = checkedUser;	
//		System.out.println("dao = " +array);
//		JSONArray jSONArray = new JSONArray();
		
		

		
//		for(int i=1; i<checkedUser.size(); i++) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("checkedUser", checkedUser[i]);
//		}
//			System.out.println("map = " +map); */
//		sqlSession.delete("projectSQL.adminDeleteUser", checkedUser);		

	}


}

