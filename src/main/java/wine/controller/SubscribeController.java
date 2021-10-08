package wine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/subscribe")
@Controller
public class SubscribeController {
	@GetMapping("/subscribe")
	public String subscribe() {
		return "subscribe/subscribe";
	}
	@GetMapping("/subscribe_product")
	public String subscribe_product() {
		return "subscribe/subscribe_product";
	}
}
