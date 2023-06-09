package user.dao;


import java.util.HashMap;
import user.bean.IconDTO;
import user.bean.UserDTO;

public interface UserDAO {
    public void signup(UserDTO userDTO);

    public UserDTO getUser(String id);

	public void setIcon(IconDTO iconDTO);

	public IconDTO getIcon(String id);

	public void updateInfo(UserDTO userDTO);

	public void updateIcon(IconDTO iconDTO);

	public String getPwd(String id);

	public void deleteUser(UserDTO userDTO);

	public void snsSignup(String id);

	public void snsSignupIcon(String id);

	void writeApplication(HashMap<String, String> param_map);
    
}
