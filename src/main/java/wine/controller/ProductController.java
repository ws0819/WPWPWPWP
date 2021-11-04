package wine.controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.CartBean;
import wine.beans.PageBean;
import wine.beans.ProductOrderBean;
import wine.beans.SommelierBean;
import wine.beans.SubscribeBean;
import wine.beans.UserBean;
import wine.beans.UserInfoBean;
import wine.beans.WineProductBean;
import wine.service.AdminService;
import wine.service.ProductService;
import wine.service.UserService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired 
	private ProductService productService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
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
	      String searchon= "";
	      model.addAttribute("wine_type", wine_type);
	      model.addAttribute("searchon", searchon);
	      List<WineProductBean> wineProductBean=productService.getAllWineInfo(page, wine_type);
	      model.addAttribute("wineProductBean",wineProductBean);
	      PageBean pageBean = productService.getWineCount(page, wine_type);
	      model.addAttribute("pageBean",pageBean);
	      model.addAttribute("page", page);
	      return "product/product";
	   }
	   
	   @GetMapping("/product_pro")
	   public String product_pro(@ModelAttribute("SearchWienBean") WineProductBean SearchWienBean , Model model
	                  ,@RequestParam(value="page", defaultValue = "1") int page
	                  ,@RequestParam("wine_name") String wine_name) {
	      List<WineProductBean> wineProductBean=productService.getSelectWine(SearchWienBean, page);
	      List<WineProductBean> wineProductBean2=productService.getSelectWine_name(SearchWienBean, page);
	      String searchon= "searchon";
	      
	      
	      if(wine_name=="" && page >=0) {
	         model.addAttribute("wineProductBean",wineProductBean);
	         PageBean pageBean = productService.getSearchWineCount(page,SearchWienBean);
	         model.addAttribute("pageBean",pageBean);
	         model.addAttribute("page", page);
	         model.addAttribute("searchon", searchon);
	      }else {
	         model.addAttribute("wineProductBean",wineProductBean2);
	         PageBean pageBean = productService.getSearchWineCount(page,SearchWienBean);
	         model.addAttribute("pageBean",pageBean);
	         model.addAttribute("page", page);
	         model.addAttribute("searchon", searchon);
	      }
	      
	   
	      return "product/product";
	   }
	
	@GetMapping("/cart")
	public String cart(@ModelAttribute("updateCartBean") CartBean updateCartBean, Model model) {
		List<CartBean> cartBean=productService.getCartList(loginUser.getUser_id());
		//�옣諛붽뎄�땲媛� 鍮꾩뼱�엳�떎硫� �넗�깉媛�寃� 援ы븯�뒗 mapper媛� �삤瑜섎굹誘�濡� 留됱븘以섏빞�빀�땲�떎
		if(!cartBean.isEmpty()) { 
		int total_price=productService.getCartTotalPrice(loginUser.getUser_id());
		model.addAttribute("total_price",total_price);
		}
		//�옣諛붽뎄�땲媛� 鍮꾩뼱�엳�쑝硫� �넗�깉媛�寃⑹� 臾댁“嫄� 0�쑝濡� �꽕�젙
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
		
		//�옣諛붽뎄�땲�뿉 媛숈� ���씤�씠 �뱾�뼱�엳�뒗吏� 泥댄겕�빀�땲�떎
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
		//�옣諛붽뎄�땲�뿉 媛숈�寃� �엳�떎硫� fail
		if(already == true) {
			return "product/cart_fail";
		}
		//�뾾�떎硫� �옣諛붽뎄�땲�뿉 �떞�뒿�땲�떎
		else {		
			wineProductBean.setUser_id(loginUser.getUser_id());
			productService.addCartWine(wineProductBean);
			return "product/cart_pro";
		}
	}
	@GetMapping("/cart_pro_2")
	public String cart_pro_2(@RequestParam("wine_idx") int wine_idx , Model model) {
		List<CartBean> cartBean2=productService.getCartList(loginUser.getUser_id());
		if(cartBean2.isEmpty()==false) {
			for(int i=0; i<cartBean2.size(); i++) {
				if(cartBean2.get(i).getWine_number()==20001 || cartBean2.get(i).getWine_number()==20002 || cartBean2.get(i).getWine_number()==20003 || cartBean2.get(i).getWine_number()==20004) {
					return "product/cart_pro_4";
				}
			}
		}
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		wineProductBean.setUser_id(loginUser.getUser_id());
		productService.addCartWine(wineProductBean);
		return "product/cart_pro_2";
	}
	@GetMapping("/cart_pro_3")
	public String cart_pro_3(@RequestParam("wine_idx") int wine_idx, Model model) {
		WineProductBean wineProductBean=productService.getOneWineInfo(wine_idx);
		List<CartBean> cartBean=productService.getCartList(loginUser.getUser_id());
		int i = 0;
		boolean already = false;
		
		//�옣諛붽뎄�땲�뿉 媛숈� ���씤�씠 �뱾�뼱�엳�뒗吏� 泥댄겕�빀�땲�떎
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
		//�옣諛붽뎄�땲�뿉 媛숈�寃� �엳�떎硫� fail
		if(already == true) {
			return "product/cart_fail";
		}
		//�뾾�떎硫� �옣諛붽뎄�땲�뿉 �떞�뒿�땲�떎
		else {
		wineProductBean.setUser_id(loginUser.getUser_id());
		productService.addCartWine(wineProductBean);
		return "product/cart_pro_2";
		}
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
	   public String checkout(@ModelAttribute("OrderBean") ProductOrderBean OrderBean, Model model,
	                     @RequestParam(value="pg_token", defaultValue = "") String pg_token,
	                     @RequestParam(value="write", defaultValue = "off") String write ) {
	      int total_price=productService.getCartTotalPrice(loginUser.getUser_id());
	      model.addAttribute("total_price",total_price);
	      model.addAttribute("write",write);
	      if(pg_token.length() <= 0) {
	      model.addAttribute("OrderBean",OrderBean);
	      return "product/checkout";
	      }
	      else {
	         //寃곗젣 �썑 �뿬湲곕줈 �씠�룞�빀�땲�떎
	         model.addAttribute("OrderBean",OrderBean);
	         
     	     List<CartBean> cartBean2=productService.getCartList(loginUser.getUser_id());
     	     List<SommelierBean> sommelier = adminService.getSommelier();
		     if(cartBean2.isEmpty()==false) {
				for(int i=0; i<cartBean2.size(); i++) {
					String user_id = loginUser.getUser_id();
					int user_number = loginUser.getUser_number();
					SubscribeBean subscribeBean = new SubscribeBean();
			        if(cartBean2.get(i).getWine_number()==20001) {
			        	String subscribe_grade = cartBean2.get(i).getWine_name();
			        	int subscribe_sommliernumber = sommelier.get(0).getSommelier_number();
			        	subscribeBean.setSubscribe_grade(subscribe_grade);
			        	subscribeBean.setSubscribe_sommliernumber(subscribe_sommliernumber);
			        	subscribeBean.setUser_id(user_id);
			        	subscribeBean.setUser_number(user_number);
			            adminService.addSubscribe(subscribeBean);
			        }
			        if(cartBean2.get(i).getWine_number()==20002) {
			        	String subscribe_grade = cartBean2.get(i).getWine_name();
			        	int subscribe_sommliernumber = sommelier.get(0).getSommelier_number();
			        	subscribeBean.setSubscribe_grade(subscribe_grade);
			        	subscribeBean.setSubscribe_sommliernumber(subscribe_sommliernumber);
			        	subscribeBean.setUser_id(user_id);
			        	subscribeBean.setUser_number(user_number);
			            adminService.addSubscribe(subscribeBean);
			        }
			        if(cartBean2.get(i).getWine_number()==20003) {
			        	String subscribe_grade = cartBean2.get(i).getWine_name();
			        	int subscribe_sommliernumber = sommelier.get(1).getSommelier_number();
			        	subscribeBean.setSubscribe_grade(subscribe_grade);
			        	subscribeBean.setSubscribe_sommliernumber(subscribe_sommliernumber);
			        	subscribeBean.setUser_id(user_id);
			        	subscribeBean.setUser_number(user_number);
			            adminService.addSubscribe(subscribeBean);
			        }
			        if(cartBean2.get(i).getWine_number()==20004) {
			        	String subscribe_grade = cartBean2.get(i).getWine_name();
			        	int subscribe_sommliernumber = sommelier.get(2).getSommelier_number();
			        	subscribeBean.setSubscribe_grade(subscribe_grade);
			        	subscribeBean.setSubscribe_sommliernumber(subscribe_sommliernumber);
			        	subscribeBean.setUser_id(user_id);
			        	subscribeBean.setUser_number(user_number);
			            adminService.addSubscribe(subscribeBean);
			        }
				}
			}
		     int total = productService.getCartTotalPrice(loginUser.getUser_id());
		     double point = total * 0.05;
		     
		     String subcribe = "";
		     for(int i=0; i<cartBean2.size(); i++) {
		    	 if(cartBean2.get(i).getWine_number()==20001 || cartBean2.get(i).getWine_number()==20002 || cartBean2.get(i).getWine_number()==20003 || cartBean2.get(i).getWine_number()==20004 || cartBean2.get(i).getWine_number()==20005) {
		    		 if(cartBean2.get(i).getWine_number()==20001) {
		    			 subcribe += "ORANGE_SINGLE/";
		    		 }
		    		 else if(cartBean2.get(i).getWine_number()==20002) {
		    			 subcribe += "ORANGE_DOUBLE/";
		    		 }
		    		 else if(cartBean2.get(i).getWine_number()==20003) {
		    			 subcribe += "VIOLET/";
		    		 }
		    		 else if(cartBean2.get(i).getWine_number()==20004) {
		    			 subcribe += "BLACK/";
		    		 }
		    		 else if(cartBean2.get(i).getWine_number()==20005) {
		    			 subcribe += "EASY_BOX/";
		    		 }
		    	 }
		     }
		     UserInfoBean userInfo = new UserInfoBean();
		     userInfo.setUser_id(loginUser.getUser_id());
		     userInfo.setUser_number(loginUser.getUser_number());
		     userInfo.setUser_point(point);
		     userInfo.setUser_subscribe(subcribe);
		     userService.addUseruser(userInfo);
		     
	         productService.deleteAllCart(loginUser.getUser_id());
	         return "product/payment";
	      }
	   }
	
	@GetMapping("/checkout_pro")
	   public String checkout_pro(@ModelAttribute("OrderBean") ProductOrderBean OrderBean, Model model) {
	      OrderBean.setOrder_id(loginUser.getUser_id());
	      productService.insertOrder(OrderBean);
	      model.addAttribute("OrderBean",OrderBean);
	      return "product/checkout_pro";
	   }
	
}
