	package user.dao;


import java.util.ArrayList;
import java.util.HashMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.IconDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class UserDAOMyBatis implements UserDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public void signup(UserDTO userDTO) {
        sqlSession.insert("userSQL.signup",userDTO);
    }

    @Override
    public UserDTO getUser(String id) {
        return sqlSession.selectOne("userSQL.getUser",id);

    }

    @Override
	public void setIcon(IconDTO iconDTO) {
		sqlSession.insert("userSQL.setIcon",iconDTO);
		
	}

	@Override
	public IconDTO getIcon(String id) {
		return sqlSession.selectOne("userSQL.getIcon",id);
	}

	@Override
	public void updateInfo(UserDTO userDTO) {
		sqlSession.update("userSQL.updateInfo", userDTO);
	}

	@Override
	public void updateIcon(IconDTO iconDTO) {
		sqlSession.update("userSQL.updateIcon", iconDTO);
	}

	@Override
	public String getPwd(String id) {
		return sqlSession.selectOne("userSQL.getPwd",id);
		
	}

	@Override
	public void deleteUser(UserDTO userDTO) {
		sqlSession.delete("userSQL.deleteUser",userDTO.getId());
		
	}

	@Override
	public void snsSignup(String id) {
		 sqlSession.insert("userSQL.snsSignup",id);
	}

	@Override
	public void snsSignupIcon(String id) {
		sqlSession.insert("userSQL.snsSignupIcon",id);
		
	}

	@Override
	public void writeApplication(HashMap<String, String> param_map) { //user_id, project_id, app_field, reason

		HashMap<String, Object> user_tech_map = sqlSession.selectOne("userSQL.userTechStack", param_map.get("user_id"));
		//hashmap에 저장된 key 중에 value가 "y"인 것들만 고르기.
		ArrayList<String> user_tech_stack = new ArrayList<String>();
		user_tech_map.forEach((key, value)->{
			if(value.equals("y") || value.equals("Y")){
				user_tech_stack.add(key);
			}
		});

		String tech_stack  = String.join(",",  user_tech_stack);
		param_map.put("tech_stack", tech_stack);

		sqlSession.insert("userSQL.writeApplication", param_map);//user_id, project_id, app_field, reason, tech_stack
	}


}




