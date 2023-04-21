package user.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
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

	
	
}




