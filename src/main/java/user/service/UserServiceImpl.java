package user.service;


import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.conf.WebSecurityConfiguration;
import user.bean.IconDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public void signup(UserDTO userDTO) {
		WebSecurityConfiguration webSecurityConfig = new WebSecurityConfiguration();
		String rawPW = userDTO.getPwd();
		String encodePW = webSecurityConfig.getPasswordEncoder().encode(rawPW);
		userDTO.setPwd(encodePW);
		userDAO.signup(userDTO);
	}

	@Override
	public String isExistId(String id) {
		UserDTO userDTO= userDAO.getUser(id);
		if(userDTO == null)
			return "non_exist";
		else
			return "exist";
	}

	@Override
	public IconDTO getIcon(String id) {
		return userDAO.getIcon(id);
	}

	@Override
	public String setIcon(IconDTO iconDTO) {
		userDAO.setIcon(iconDTO);
		return null;
		
	}

	@Override
	public UserDTO getUser(String id) {
		return userDAO.getUser(id);
	}

	@Override
	public void updateInfo(UserDTO userDTO) {
		WebSecurityConfiguration webSecurityConfig = new WebSecurityConfiguration();
		String rawPW = userDTO.getPwd();
		String encodePW = webSecurityConfig.getPasswordEncoder().encode(rawPW);
		userDTO.setPwd(encodePW);
		userDAO.updateInfo(userDTO);
		
	}

	@Override
	public String updateIcon(IconDTO iconDTO) {
		userDAO.updateIcon(iconDTO);
		return null;
	}

	@Override
	public String login(UserDTO userDTO) {
		UserDTO userDTO1 = userDAO.getUser(userDTO.getId());
		WebSecurityConfiguration webSecurityConfig = new WebSecurityConfiguration();
		String rawPW = userDTO.getPwd();
		String DBPwd = userDAO.getPwd(userDTO.getId());
		Boolean check = webSecurityConfig.getPasswordEncoder().matches(rawPW, DBPwd);
		if(check) {
			if(userDTO1.getRole().equals("admin")) {
				return "admin";
			}else {
				return "user";
			}
		}else {
			return "fail";
		}
	}

	@Override
	public void deleteUser(UserDTO userDTO) {
		userDAO.deleteUser(userDTO);
	}

	@Override
	public String snsLogin(String id) {
		UserDTO userDTO = userDAO.getUser(id);
		if(userDTO == null) {
			return "non_exist";
		}else {
			return "exist";
		}
	}

	@Override
	public void snsSignup(String id) {
		userDAO.snsSignup(id);
		userDAO.snsSignupIcon(id);
	}

	@Override
	public void writeApplication(HashMap<String, String> param_map){
		userDAO.writeApplication(param_map);

	};
}
