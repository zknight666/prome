package user.service;


import user.bean.UserDTO;

public interface UserService {

    public void signup(UserDTO userDTO);

    public String isExistId(String id);


}
