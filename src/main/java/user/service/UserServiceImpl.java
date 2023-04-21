package user.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public void signup(UserDTO userDTO) {
		System.out.println("getaddress"+userDTO.getAddress1());
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









}
