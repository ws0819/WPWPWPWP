package wine.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.UserDAO;
import wine.beans.UserBean;

@Service
public class UserService {
	
	@Autowired
	private UserDAO userDao;
	
	@Resource(name="loginUser")
	private UserBean loginUser;
	
	public boolean checkUserIdExist(String user_id) {
		
		String user_name=userDao.checkUserIdExist(user_id);
		
		if(user_name==null) {
			return true;
			}
		else {
			return false;	
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2=userDao.getLoginUserInfo(tempLoginUserBean);
		
		if(tempLoginUserBean2!=null) {
			loginUser.setUser_number(tempLoginUserBean2.getUser_number());
			loginUser.setUser_name(tempLoginUserBean2.getUser_name());
			loginUser.setUserLogin(true);
		}
	}

}
