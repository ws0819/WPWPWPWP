package wine.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import wine.DAO.UserDAO;
import wine.beans.UserBean;
import wine.service.UserService;
import wine.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	
	@Resource(name="loginUser")
	private UserBean loginUser;
	
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail,
			Model model) {
		model.addAttribute("fail",fail);
		return "user/login";
	}
	
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, BindingResult result) {
	
		if(result.hasErrors()) {
		return "user/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);
		
		if(loginUser.isUserLogin()==true) {
			return "user/login_suc";
		}
		else {
			return "user/login_fail";
		}
	}
	
	@GetMapping("/not_login")
	public String not_login() {
		return "user/not_login";
	}
	
	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join";
	}
	
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		
		if(result.hasErrors()){
			return "user/join";
		}
		
		userService.addUserInfo(joinUserBean);
		
		return "user/join_suc";
		
	}
	
	  @InitBinder
	   public void InitBinder(WebDataBinder binder) {
	      UserValidator validator1=new UserValidator();
	      
	      binder.addValidators(validator1);
	   }
	   
	  @GetMapping("/logout")
	   public String logout() {
	      loginUser.setUserLogin(false);
	      return "user/logout";
	   }
	  
	  @GetMapping("/mypage")
	  public String mypage(@ModelAttribute("userMyPage") UserBean userMyPage) {
		  
		 userService.userMyPage(userMyPage);
		  return "user/mypage";
	  } 
	  
	  @GetMapping("/modify")
	  public String modify(@ModelAttribute("userModify") UserBean userModify) {

		  userService.userModify(userModify);
		  System.out.println(userModify.getUser_number());
		  return "user/modify";
	  }
	  
	  @PostMapping("/modify_pro")
		public String modify_pro(@Valid @ModelAttribute("userMyPage") UserBean userMyPage, BindingResult result) {
		  
			if(result.hasErrors()) {
				
				return "user/modify_fail";
			}
			
			userService.modifyUserInfo(userMyPage);
			
			return "user/modify_suc";
			
		}
	  @GetMapping("/user_iN")
	  public String user_iN(@RequestParam("tel_iN") String tel_iN, Model model) {
		  System.out.println(tel_iN);
		  model.addAttribute("tel_iN", tel_iN);
		  return "user/user_iN";
	  }
	}
	
