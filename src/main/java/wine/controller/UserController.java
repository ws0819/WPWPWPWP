package wine.controller;

import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import wine.beans.UserBean;
import wine.service.UserService;
import wine.service.coolSMS;
import wine.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	coolSMS coolSms;

	@Resource(name = "loginUser")
	private UserBean loginUser;

	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail", fail);
		return "user/login";
	}

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result) {

		if (result.hasErrors()) {
			return "user/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);

		if (loginUser.isUserLogin() == true) {
			loginUser.setUser_id(tempLoginUserBean.getUser_id());
			return "user/login_suc";
		} else {
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

		if (result.hasErrors()) {
			return "user/join";
		}

		userService.addUserInfo(joinUserBean);

		return "user/join_suc";

	}

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();

		binder.addValidators(validator1);
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
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
		return "user/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("userMyPage") UserBean userMyPage, BindingResult result) {

		if (result.hasErrors()) {

			return "user/modify_fail";
		}

		userService.modifyUserInfo(userMyPage);

		return "user/modify_suc";

	}

	@GetMapping("/delete")
	public String deleteUser() {
		userService.deleteUser(loginUser);
		loginUser.setUserLogin(false);
		return "user/delete_suc";
	}

	@RequestMapping(value = "sendSms.do")
	public @ResponseBody String sendSMS(String phoneNumber) {

		Random rand = new Random();
		String numStr = "";
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}

		System.out.println("수신자 번호 : " + phoneNumber);
		System.out.println("인증번호 : " + numStr);
		coolSms.certifiedPhoneNumber(phoneNumber, numStr);
		return numStr;
	}

}
