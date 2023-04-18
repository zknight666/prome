package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="users")
public class UserController {
	
	

	@GetMapping(value="join")
	public String join() {
		
		return "users/join";
	}

	
	@GetMapping(value="userinfo")
	public String userinfo() {
		
		return "users/userinfo";
	}
	
	
	
	
}
