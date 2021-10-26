package wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.CartBean;
import wine.beans.WineProductBean;
import wine.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired 
	private ProductService productService;
	
	
	
	@GetMapping("/home")
	public String home(Model model) {
		
		List<WineProductBean> wineProductBean=productService.getWineInfo();
		model.addAttribute("wineProductBean",wineProductBean);
		
		return "product/home";
	}
	
	@GetMapping("/product")
	public String product(@ModelAttribute("SearchWienBean") WineProductBean SearchWienBean , Model model) {
		List<WineProductBean> wineProductBean=productService.getWineInfo();
		model.addAttribute("wineProductBean",wineProductBean);
		return "product/product";
	}
	
	@PostMapping("/product_search")
	public String product_search(@ModelAttribute("SearchWienBean") WineProductBean SearchWienBean ,Model model) {
		List<WineProductBean> wineProductBean=productService.getSelectWine(SearchWienBean);
		model.addAttribute("wineProductBean",wineProductBean);
		return "product/product_search";
	}
	
	@GetMapping("/cart")
	public String cart(@ModelAttribute("updateCartBean") CartBean updateCartBean, Model model) {
		List<CartBean> cartBean=productService.getCartList();
		model.addAttribute("cartBean",cartBean);
		
		return "product/cart";
	}
	
	@GetMapping("/cartBean_pro")
	public String cartBean_pro(@RequestParam("product_number") int product_number,
			@ModelAttribute("updateCartBean") CartBean updateCartBean, Model model) {
		updateCartBean.setProduct_number(product_number);
		productService.updateCartAmount(updateCartBean);
		return "product/cartBean_pro";
	}
	
	@GetMapping("/cart_delete")
	public String cart_delete(@RequestParam("product_number") int product_number) {
		productService.deleteCart(product_number);
		return "product/cart_delete";
	}
	
	@GetMapping("/cart_pro")
	public String cart_pro(@RequestParam("wine_idx") int wine_idx , Model model) {
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		productService.addCartWine(wineProductBean);
		return "product/cart_pro";
	}
	
	
	@GetMapping("/info")
	public String info() {
		return "product/info";
	}
	
	
	
}
