package user.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;



	
	
	
	
}
