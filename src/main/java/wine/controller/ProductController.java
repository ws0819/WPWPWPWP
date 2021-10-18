package wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import wine.beans.WineProductBean;
import wine.mapper.ProductMapper;
import wine.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired 
	private ProductService productService;
	
	
	
	@GetMapping("/home")
	public String home(Model model) {
		
		List<WineProductBean> wineProductBean=productService.getWineInfo();
		//WineProductBean wineProductBean=productService.getOneWineInfo(141213);
		
		model.addAttribute("wineProductBean",wineProductBean);
		
		return "product/home";
	}
	
	@GetMapping("/product")
	public String product(Model model) {
		
		List<WineProductBean> wineProductBean=productService.getWineInfo();
		model.addAttribute("wineProductBean",wineProductBean);
		return "product/product";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "product/cart";
	}
	
	@GetMapping("/info")
	public String info() {
		return "product/info";
	}
	
}
