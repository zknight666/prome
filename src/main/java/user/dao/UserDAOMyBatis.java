	package user.dao;


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
	
	
}




