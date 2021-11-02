package wine.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.AdminBean;
import wine.beans.SubscribeBean;
import wine.beans.UserLogBean;
import wine.service.AdminService;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Resource(name="loginAdminBean")
	private AdminBean loginAdminBean;
	
	@GetMapping("/admin_login")
	public String admin_login(@ModelAttribute("temploginAdminBean") AdminBean temploginAdminBean, @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		if(loginAdminBean.isAdminLogin()==true) {
			return "admin/admin_main";
		}
		model.addAttribute("fail", fail);
		return "admin/admin_login";
	}
	@PostMapping("/admin_pro")
	public String admin_pro(@ModelAttribute("temploginAdminBean") AdminBean temploginAdminBean, BindingResult result) {
		if(result.hasErrors()) {
			return "admin/admin_login";
		}
		adminService.getLoginAdminInfo(temploginAdminBean);
		
		if(loginAdminBean.isAdminLogin()==true) {
			return "admin/admin_success";
		}
		else {
			return "admin/admin_fail";
		}
	}
	@GetMapping("/admin_main")
	public String admin_main() {
		return "admin/admin_main";
	}
	@GetMapping("/admin_not")
	public String admin_not() {
		return "admin/admin_not";
	}
	@GetMapping("/admin_userlog")
	public String admin_userlog(Model model) {
		List<UserLogBean> userLogBean = adminService.getUserLog();
		model.addAttribute("userLogBean", userLogBean);
		
		return "admin/admin_userlog";
	}
	@GetMapping("admin_subscribe")
	public String admin_subscribe(Model model) {
		List<SubscribeBean> subscribeBean = adminService.getSubscribe();
		model.addAttribute("subscribeBean", subscribeBean);
		
		return "admin/admin_subscribe";
	}
}
