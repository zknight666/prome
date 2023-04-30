package user.service;


import user.bean.IconDTO;
import user.bean.UserDTO;

public interface UserService {

    public void signup(UserDTO userDTO);

    public String isExistId(String id);

	public IconDTO getIcon(String id);

	public String setIcon(IconDTO iconDTO);

	public UserDTO getUser(String id);

	public void updateInfo(UserDTO userDTO);

	public String updateIcon(IconDTO iconDTO);

	public String login(UserDTO userDTO);

	public void deleteUser(UserDTO userDTO);

	public String snsLogin(String id);

	public void snsSignup(String id);
}
