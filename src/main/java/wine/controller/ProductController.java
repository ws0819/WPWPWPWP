package wine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@GetMapping("/home")
	public String home() {
		return "product/home";
	}
	
	@GetMapping("/product")
	public String product() {
		return "product/product";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "product/cart";
	}
	
}
