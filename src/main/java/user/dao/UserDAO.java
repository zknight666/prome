package user.dao;


import user.bean.UserDTO;

public interface UserDAO {
    public void signup(UserDTO userDTO);

    public UserDTO getUser(String id);



}
