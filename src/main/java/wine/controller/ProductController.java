package wine.controller;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.CartBean;
import wine.beans.PageBean;
import wine.beans.ProductOrderBean;
import wine.beans.UserBean;
import wine.beans.WineProductBean;
import wine.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired 
	private ProductService productService;
	
	@Resource(name="loginUser")
	private UserBean loginUser;

	@GetMapping("/home")
	public String home(Model model) {
		
		List<WineProductBean> wineProductBean=productService.getWineInfo();
		
		model.addAttribute("wineProductBean",wineProductBean);
		
		return "product/home";
	}
	
	@GetMapping("/product")
	public String product(@ModelAttribute("SearchWienBean") WineProductBean SearchWienBean , Model model
						,@RequestParam(value="page", defaultValue = "1") int page,
						 @RequestParam(value="wine_type", defaultValue = "Red") String wine_type) {
		
		if(SearchWienBean.getWine_name()==null) {
			if(SearchWienBean.getWine_nation()==null) { 
		List<WineProductBean> wineProductBean=productService.getAllWineInfo(page, wine_type);
		model.addAttribute("wineProductBean",wineProductBean);
		PageBean pageBean = productService.getWineCount(page, wine_type);
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page", page);
			}else {
			List<WineProductBean> wineProductBean=productService.getSelectWine(SearchWienBean, page);
			model.addAttribute("wineProductBean",wineProductBean);
			PageBean pageBean = productService.getSearchWineCount(page,SearchWienBean);
			model.addAttribute("pageBean",pageBean);
			model.addAttribute("page", page);
		}
		}
		else if(SearchWienBean.getWine_name()!=null) {
			List<WineProductBean> wineProductBean=productService.getSelectWine_name(SearchWienBean, page);
			model.addAttribute("wineProductBean",wineProductBean);
			PageBean pageBean = productService.getSearchWineCount(page,SearchWienBean);
			model.addAttribute("pageBean",pageBean);
			model.addAttribute("page", page);
		}
		
		
		return "product/product";
	}
	
	@GetMapping("/cart")
	public String cart(@ModelAttribute("updateCartBean") CartBean updateCartBean, Model model) {
		List<CartBean> cartBean=productService.getCartList(loginUser.getUser_id());
		//장바구니가 비어있다면 토탈가격 구하는 mapper가 오류나므로 막아줘야합니다
		if(!cartBean.isEmpty()) { 
		int total_price=productService.getCartTotalPrice(loginUser.getUser_id());
		model.addAttribute("total_price",total_price);
		}
		//장바구니가 비어있으면 토탈가격은 무조건 0으로 설정
		else {
		int	total_price=0;
		model.addAttribute("total_price",total_price);
		}
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
	public String cart_pro(@RequestParam("wine_idx") int wine_idx , Model model)  {
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		List<CartBean> cartBean=productService.getCartList(loginUser.getUser_id());
		int i = 0;
		boolean already = false;
		
		//장바구니에 같은 와인이 들어있는지 체크합니다
		if(!cartBean.isEmpty()) {
			for(i=0;i<cartBean.size();i++) {
				if(cartBean.get(i).getWine_idx()==wine_idx) {
					already = true;
				}
				else {
					continue;
				}
				
			}
			
		}
		//장바구니에 같은게 있다면 fail
		if(already == true) {
			return "product/cart_fail";
		}
		//없다면 장바구니에 담습니다
		else {		
			wineProductBean.setUser_id(loginUser.getUser_id());
			productService.addCartWine(wineProductBean);
			return "product/cart_pro";
		}
	}
	@GetMapping("/cart_pro_2")
	public String cart_pro_2(@RequestParam("wine_idx") int wine_idx , Model model) {
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		productService.addCartWine(wineProductBean);
		return "product/cart_pro_2";
	}
	
	@GetMapping("/cart_fail")
	public String cart_fail() {
		return "product/cart_fail";
	}
	
	@GetMapping("/info")
	public String info(@RequestParam("wine_idx") int wine_idx, Model model) {
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		model.addAttribute("wineProductBean",wineProductBean);
		System.out.println(wineProductBean.getWine_sweet());
		
		return "product/info";
	}
	
	@GetMapping("/checkout")
	public String checkout(@ModelAttribute("OrderBean") ProductOrderBean OrderBean, Model model) {
		model.addAttribute("OrderBean",OrderBean);
		return "product/checkout";
	}
	
	@GetMapping("/checkout_pro")
	public String checkout_pro(@ModelAttribute("OrderBean") ProductOrderBean OrderBean, Model model) {
		OrderBean.setOrder_id(loginUser.getUser_id());
		productService.insertOrder(OrderBean);
		return "product/checkout_pro";
	}
	
}
