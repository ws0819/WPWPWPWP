package wine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import wine.beans.FaqBean;

@Controller
public class MainController {
	
	
	@GetMapping("/main")
	public String main(@ModelAttribute("faqContentBean") FaqBean writeFaqeBean) {
		return "main";
	}
}
