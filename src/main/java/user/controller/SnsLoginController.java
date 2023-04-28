package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="oauth")
public class SnsLoginController{
	
	@GetMapping(value="kakao")
	public String kakao(@RequestParam String code) {
		return null;
	}
}
