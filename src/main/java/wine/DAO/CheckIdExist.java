package wine.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import wine.service.UserService;

@RestController
public class CheckIdExist {

	@Autowired
	private UserService userService;
	
	@GetMapping("/user/checkUserIdExist/{user_id}")
	@ResponseBody
	public String checkUserIdExist(@PathVariable String user_id) {
		
		boolean check=userService.checkUserIdExist(user_id);
		
		return check + "";
	}
}
