package wine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import wine.service.CheckSnsService;

@RestController
public class SMS_API {

	@Autowired
	private CheckSnsService checkSnsService;
	
	@GetMapping("/user/bbbbb/{user_tel}")
	public String bbbbb(@PathVariable String user_tel) {
		String iN = checkSnsService.certificationUser_tel(user_tel);
		
		return iN;
	}
}