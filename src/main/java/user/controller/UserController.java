package user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import user.bean.UserDTO;
import user.service.UserService;

@Controller
@RequestMapping(value="users")
public class UserController {
	@Autowired
	private UserService userService;
	
	
	@GetMapping(value="join")
	public String join() {
		
		return "users/join";
	}
	
	@GetMapping(value="userinfo")
	public String userinfo() {
		
		return "users/userinfo";
	}
	
	@GetMapping(value="mypage")
	public String mypage() {
		
		return "users/mypage";
	}
	
	@GetMapping(value="usermanage")
	public String usermanage() {
		
		return "users/usermanage";
	}


	@PostMapping(value="signup")
	@ResponseBody
	public void signup(@ModelAttribute UserDTO userDTO) {
		System.out.println("icon"+userDTO.getTech());
		//userService.signup(userDTO);
	}

	@PostMapping(value="isExistId")
	@ResponseBody
	public String isExistId(@RequestParam String id) {
		return userService.isExistId(id);
	}
	
	
	
	
}

