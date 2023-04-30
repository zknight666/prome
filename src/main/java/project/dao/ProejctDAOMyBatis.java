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

import project.bean.ApplicantsDTO;
import project.bean.ProjCardDTO;
import project.bean.ProjDetailDTO;
import project.bean.ProjectDTO;
import project.bean.ProjectMainpageDTO;
import project.bean.MemberCardDTO;
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

//    @Override
//    public List<ProjectDTO> getBookmark() {
//        return sqlSession.selectList("projectSQL.getBookmark");
//    }
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
	//--------------------------------------------------

    @Override
    public List<UserDTO> getUserList() {
        return sqlSession.selectList("userSQL.getUserList");
    }



    //1개의 프로젝트 카드를 표시하기 위해 필요한 모든 정보를 갖고 온다
    @Override
    public ProjCardDTO getProjectCard(String user_id, String project_id) {

        Map<String, String> param_map = new HashMap<String, String>();
        param_map.put("user_id", user_id);
        param_map.put("project_id", project_id);

        //1. 이 User의 관심목록인지 확인. -> project_id or null
        String isBookmark = sqlSession.selectOne("projectSQL.isBookmark", param_map);


        //2. 해당 프로젝트 적용 기술 가져와서 Icon 표시함 -> project_tech_stack
        HashMap<String, Object> proj_tech_map = sqlSession.selectOne("projectSQL.techStack", project_id);
        //hashmap에 저장된 key 중에 value가 "y"인 것들만 고르기.
        ArrayList<String> project_tech_arr = new ArrayList<String>();
        proj_tech_map.forEach((key, value)->{
            if(value.equals("y") || value.equals("Y")){
                project_tech_arr.add(key);
            }
        });


        //3. 몇명이 관심 목록에 담았는지 -> 하트뒤에 표시 ->bookmark
        int heartCount = 0;
        heartCount = sqlSession.selectOne("projectSQL.heartCount", project_id);


        //4. 모집완료 -> 모집된 팀 멤버/모집할 팀 멤버수
        //4-1)분야별 모집할 멤버 수
        HashMap<String, Object> rec_field_map = sqlSession.selectOne("projectSQL.recField", project_id);

        //4-2)분야별 모집한 멤버 수
        //해당 프로젝트의 멤버들 user_id, ex)member6 이후의 값이 null일 때 hashmap에 매핑되지 않는다.
        HashMap<String, Object> proj_member_map = sqlSession.selectOne("projectSQL.projectMember", project_id);
        ArrayList<String> member_arr = new ArrayList<String>();
        List<String> member_field = null;


        if (proj_member_map != null && proj_member_map.size() != 0){ //해당 프로젝트에 가입승인된 멤버가 한명이라도 있는 경우
            proj_member_map.forEach((key, value)->{
                member_arr.add((String)value);
            });

            Map<String, Object> param2_map = new HashMap<String, Object>();
            param2_map.put("project_id", project_id);
            param2_map.put("member_arr", member_arr);
            //member_field은 지원분야 이름이 0~9개 있음.
            member_field = sqlSession.selectList("projectSQL.memberField", param2_map);
        }

        ProjectDTO projectDTO =  sqlSession.selectOne("projectSQL.getProject", project_id);

        ProjCardDTO projCardDTO = new ProjCardDTO();
        projCardDTO.setIsBookmark(isBookmark);
        projCardDTO.setProject_tech_arr(project_tech_arr);
        projCardDTO.setHeartCount(heartCount);
        projCardDTO.setRec_field_map(rec_field_map);
        projCardDTO.setMember_field(member_field);
        projCardDTO.setProjectDTO(projectDTO);


        return projCardDTO;
    }

    @Override
    public ProjectDTO getProject(String project_id) {
        return sqlSession.selectOne("projectSQL.getProject", project_id);
    }


    @Override
    public List<String> getBookmark(String user_id) {
        return sqlSession.selectList("projectSQL.getBookmark", user_id );
    }

    @Override
    public void addBookmark(String user_id, String project_id) {
        Map<String, String> param_map = new HashMap<String, String>();
        param_map.put("user_id", user_id);
        param_map.put("project_id", project_id);
        sqlSession.insert("projectSQL.addBookmark", param_map );
    }

    @Override
    public void deleteBookmark(String user_id, String project_id) {
        Map<String, String> param_map = new HashMap<String, String>();
        param_map.put("user_id", user_id);
        param_map.put("project_id", project_id);
        sqlSession.delete("projectSQL.deleteBookmark", param_map );
    }

    @Override
    public List<Map<String, Object>> getSupportedProjects(String user_id) {
        return sqlSession.selectList("projectSQL.getSupportedProjects", user_id );
    }

    @Override
    public Map<String, List<String>> getMyTeams(String user_id) {
        Map<String, List<String>> result_map = new HashMap<String, List<String>>();
        result_map.put("leader", sqlSession.selectList("projectSQL.getMyTeams_leader", user_id ));
        result_map.put("member", sqlSession.selectList("projectSQL.getMyTeams_member", user_id ));
        return result_map;
    }

    @Override
    public int deleteApplication(String user_id, String project_id) {
        Map<String, String> param_map = new HashMap<String, String>();
        param_map.put("user_id", user_id);
        param_map.put("project_id", project_id);
        return sqlSession.delete("projectSQL.deleteApplication", param_map );
    }

    @Override
    public void writeApplication(String user_id, Map<String, Object> map) { //map에는 //project_id, app_field, reason이 있다.
        List<String> user_techStack = new ArrayList<>();
        Map<String, String> user_tech_map = sqlSession.selectOne("projectSQL.userTechStack", user_id );

        user_tech_map.forEach((key, value) ->{
            if(value.equals("Y")){
                user_techStack.add(key);
            }
        });
        String tech_stack = String.join(",", user_techStack);

        map.put("user_id", user_id);
        map.put("tech_stack", tech_stack);

        //#{user_id}, #{project_id}, #{app_field}, #{reason}, #{tech_stack)
        sqlSession.insert("projectSQL.writeApplication", map);
    }


    @Override
    public ProjDetailDTO getProjectDetail(String project_id){
        List<MemberCardDTO> memberCardList = new ArrayList<MemberCardDTO>();

        ProjectDTO projectDTO =  sqlSession.selectOne("projectSQL.getProject", project_id);

        //1)분야별 모집한 멤버 수
        //해당 프로젝트의 멤버들 user_id, ex)member6 이후의 값이 null일 때 hashmap에 매핑되지 않는다.
        HashMap<String, Object> proj_member_map = sqlSession.selectOne("projectSQL.projectMember", project_id); //특정 프로젝트의 멤버의 user_id를 반환함.
        ArrayList<String> member_arr = new ArrayList<String>();
        List<String> member_field = null;

        if (proj_member_map != null && proj_member_map.size() != 0){ //해당 프로젝트에 가입승인된 멤버가 한명이라도 있는 경우
            proj_member_map.forEach((key, value)->{
                //value가 아이디임.
                member_arr.add((String)value);

                Map<String, String> param_map = new HashMap<String, String>();
                param_map.put("user_id", (String)value);
                param_map.put("project_id", project_id);


                HashMap<String, String> member_app_map = sqlSession.selectOne("projectSQL.memberApplication", param_map);

                    MemberCardDTO memberCardDTO = new MemberCardDTO();
                    memberCardDTO.setUserId((String)value);
                    memberCardDTO.setApp_field(member_app_map.get("APP_FIELD"));
                    memberCardDTO.setUser_tech_stack(member_app_map.get("TECH_STACK"));

                    //List<MemberCardDTO> 에 추가함.
                    memberCardList.add(memberCardDTO);


            });

            Map<String, Object> param2_map = new HashMap<String, Object>();
            param2_map.put("project_id", project_id);
            param2_map.put("member_arr", member_arr);
            //member_field은 지원분야 이름이 0~9개 있음.
            member_field = sqlSession.selectList("projectSQL.memberField", param2_map);


        }
        //분야별 모집할 멤버 수
        HashMap<String, Object> rec_field_map = sqlSession.selectOne("projectSQL.recField", project_id);



        //2) 해당 프로젝트 적용 기술 가져와서 Icon 표시함 -> project_tech_stack
        HashMap<String, Object> proj_tech_map = sqlSession.selectOne("projectSQL.techStack", project_id);
        //hashmap에 저장된 key 중에 value가 "y"인 것들만 고르기.
        ArrayList<String> project_tech_stack = new ArrayList<String>();
        proj_tech_map.forEach((key, value)->{
            if(value.equals("y") || value.equals("Y")){
                project_tech_stack.add(key);
            }
        });


        //3) 리더의 tech_stack
        String leader_id = projectDTO.getTeam_leader();
        HashMap<String, Object> leader_tech_map = sqlSession.selectOne("userSQL.userTechStack", leader_id);
        //hashmap에 저장된 key 중에 value가 "y"인 것들만 고르기.
        ArrayList<String> leader_tech_stack = new ArrayList<String>();
        leader_tech_map.forEach((key, value)->{
            if(value.equals("y") || value.equals("Y")){
                leader_tech_stack.add(key);
            }
        });


        ProjDetailDTO projDetailDTO = new ProjDetailDTO();
        projDetailDTO.setProjectDTO(projectDTO);
        projDetailDTO.setMember_field(member_field);
        projDetailDTO.setRec_field_map(rec_field_map);
        projDetailDTO.setProject_tech_stack(project_tech_stack);
        projDetailDTO.setLeader_tech_stack(leader_tech_stack);
        projDetailDTO.setMemberCardList(memberCardList);

        return projDetailDTO;

    };


}

