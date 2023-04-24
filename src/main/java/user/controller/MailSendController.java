package user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="mail")
public class MailSendController {
	@Autowired
	MailSender mailSender;
	
	@RequestMapping(value = "send", method = RequestMethod.GET)
	@ResponseBody
	public String send(@RequestParam("sm_email") String sm_email) {
		System.out.println("들어옴");
		
		int certi = (int)((Math.random()* (99999 - 10000 + 1)) + 10000);
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(sm_email);
		message.setSubject("[인증 번호]");
		message.setText("[prome 인증 번호] : "+certi+"입니다.");
		message.setFrom("prome@company.com");
		mailSender.send(message);
		return Integer.toString(certi);
	}
	
	
	
}


