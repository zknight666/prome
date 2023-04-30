package user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.SessionAttributes;
import user.bean.IconDTO;
import user.bean.UserDTO;
import user.service.UserService;

@Controller
@SessionAttributes("user_id") //세션의 key
@RequestMapping(value = "users")
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping(value = "join")
	public String join() {

		return "users/join";
	}

	@GetMapping(value = "userinfo")
	public String userinfo() {

		return "users/userinfo";
	}

	@GetMapping(value = "mypage")
	public String mypage() {

		return "users/mypage";
	}

	@GetMapping(value = "usermanage")
	public String usermanage() {

		return "users/usermanage";
	}

	// 회원가입 start
	@PostMapping(value = "signup")
	@ResponseBody
	public String signup(@ModelAttribute UserDTO userDTO) {
		userService.signup(userDTO);
		return "come";
	}

	@PostMapping(value = "isExistId")
	@ResponseBody
	public String isExistId(@RequestParam String id) {
		return userService.isExistId(id);
	}

	@PostMapping(value = "setIcon")
	@ResponseBody
	public String setIcon(@ModelAttribute IconDTO iconDTO) {
		return userService.setIcon(iconDTO);
	}
	// 회원가입 end

	// 회원정보수정 start
	@PostMapping(value = "getUser")
	@ResponseBody
	public UserDTO getUser(@RequestParam String id) {
		return userService.getUser(id);
	}

	@PostMapping(value = "getIcon")
	@ResponseBody
	public IconDTO getIcon(@RequestParam String id) {
		return userService.getIcon(id);
	}

	@PostMapping(value = "updateInfo")
	@ResponseBody
	public String updateInfo(@ModelAttribute UserDTO userDTO) {
		userService.updateInfo(userDTO);
		return "come";
	}

	@PostMapping(value = "updateIcon")
	@ResponseBody
	public String updateIcon(@ModelAttribute IconDTO iconDTO) {
		return userService.updateIcon(iconDTO);
	}
	// 회원정보 수정 end


	// 로그인 start
	@PostMapping(value = "login")
	@ResponseBody
	public String login(Model model, @ModelAttribute UserDTO userDTO) {
		String login_result = userService.login(userDTO);

		if(login_result.equals("ok")){ //로그인 성공 시 user_id를 세션에 저장.
			model.addAttribute("user_id", userDTO.getId());
		}

		return login_result;
	}
	// 로그인 end
	
	// 회원 탈퇴 start
	@PostMapping(value = "deleteUser", produces="text/html; charset=UTF-8")
	@ResponseBody
	public String deleteUser(@ModelAttribute UserDTO userDTO) {
		String login= userService.login(userDTO);
		if(login.equals("ok")) {
			userService.deleteUser(userDTO);
			return "그동안 prome를 사랑해주셔서 감사합니다.";
		}else if(login.equals("fail")) {
			return "비밀번호가 틀렸습니다.";
		}else {
			return "잘못된 경로입니다.";
		}
	}
	// 회원 탈퇴 end

	//---------------------------------------------------------------------------------------------------
	//명연 Start
	@GetMapping(value="getUser")
	@ResponseBody
	public UserDTO project(@RequestParam String id) {
		return userService.getUser(id);
	}

	//명연 End
	//---------------------------------------------------------------------------------------------------


}
