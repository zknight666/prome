package com.mvc.prome;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(@RequestParam(required = false, defaultValue = "1") String projectPg, Model model) {

		model.addAttribute("projectPg",projectPg);
		
		return "index";
		
	}
	
}
