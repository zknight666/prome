package project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import project.bean.ProjCardDTO;
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


//        Map<String, Object> result_map = new HashMap<String, Object>();
//        result_map.put("isBookmark", isBookmark); //"project_id" OR null
//        result_map.put("project_tech_arr", project_tech_arr);   //프로젝트 적용 기술들 ArrayList<String>
//        result_map.put("heartCount", heartCount);   //몇명이 관심 목록에 담았는지, int형
//        result_map.put("rec_field_map", rec_field_map);   //분야별 모집할 멤버 수, HashMap, 모집분야와 모집할 멤버수가 매핑되어 있다
//        result_map.put("member_field", member_field);   //분야별 모집한 멤버 수, List<String>형, 0~9개의 지원분야 문자열이 있음.
//        result_map.put("projectDTO", projectDTO);

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


}

