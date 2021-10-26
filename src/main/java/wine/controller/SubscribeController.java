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
	//UserBean에 isUserLogin이 생기면 그걸로 해서 성공하면 바로 subscribe_product로 실패하면 fail로 넘겨서 로그인으로 가게하게
	@GetMapping("/subscribe_product")
	public String subscribe_product() {
		return "subscribe/subscribe_product";
	}
	@GetMapping("/subscribe_review")
	public String subscribe_review() {
		return "subscribe/subscribe_review";
	}
}