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
import project.bean.ProjectMainpageDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class ProejctDAOMyBatis implements ProjectDAO {
    @Autowired
    private SqlSession sqlSession;

    //--------------- adminpage 관리자 페이지 ---------------------------
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

<<<<<<< HEAD

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

=======
>>>>>>> origin/develop-mn
	@Override
	public List<ProjectMainpageDTO> getMainProjects() {
		
		List<ProjectMainpageDTO>  list = sqlSession.selectList("projectSQL.getMainProjects");
	    
		System.out.println(list.get(0).getTitle()  + ", " + 
						   list.get(0).getField()  + ", " + 
						   list.get(0).getRecruitmentFields() + ", " + 
						   list.get(0).getTechstacks() + ", " + 
						   list.get(0).getMember_joined() + ", " + 
						   list.get(0).getMember_need()
						  );
		return list;
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

	//--------------------------------------------------
	
	
	//---------- applicants 신청서 - 프로젝트 생성자 페이지 -----------------
	@Override
	public List<Integer> getProjectId(String team_leader) {
		return sqlSession.selectList("projectSQL.getProjectId", team_leader);
	}
	
		
	@Override
	public List<ApplicantsDTO> getApplicants(Integer ar) {
		System.out.println(ar);
		return sqlSession.selectList("projectSQL.getApplicants", ar);
		
		//나중에 status가 null인 사람만 불러오도록 sql 수정해야 함!!
	}


	@Override
	public void acceptApplicants(List<String> checkedUser, String project_id) {
		System.out.println("dao = " +checkedUser + project_id);
	
			for(String ar : checkedUser) {
				System.out.println("ar =" + ar);
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("project_id", Integer.parseInt(project_id));
				map.put("ar", ar);
				sqlSession.update("projectSQL.application_table", map);
				sqlSession.update("projectSQL.project_table", map);
				sqlSession.update("projectSQL.team_member_table", map);

			}
		
	}

	@Override
	public void declineApplicants(List<String> checkedUser, String project_id) {
		for(String ar : checkedUser) {
			System.out.println("ar =" + ar);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("project_id", Integer.parseInt(project_id));
			map.put("ar", ar);
			sqlSession.update("projectSQL.declineApplicants", map);

		}
		
<<<<<<< HEAD
//		String array = checkedUser;	
//		System.out.println("dao = " +array);
//		JSONArray jSONArray = new JSONArray();
		
		

		
//		for(int i=1; i<checkedUser.size(); i++) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("checkedUser", checkedUser[i]);
//		}
//			System.out.println("map = " +map); */
//		sqlSession.delete("projectSQL.adminDeleteUser", checkedUser);		

=======
>>>>>>> origin/develop-mn
	}
	//--------------------------------------------------

    @Override
    public List<ProjectDTO> getBookmark() {
        return sqlSession.selectList("projectSQL.getBookmark");
    }



}

