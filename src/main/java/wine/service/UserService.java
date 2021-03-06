package wine.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.UserDAO;
import wine.beans.UserBean;
import wine.beans.UserInfoBean;
import wine.mapper.UserMapper;

@Service
public class UserService {

   
   @Autowired
   private UserDAO userDao;
   
   @Autowired
   private UserMapper userMapper;
   
   @Resource(name="loginUser")
   private UserBean loginUser;
   
   
   
   
     public boolean checkUserIdExist(String user_id) {
     
     String user_name=userDao.checkUserIdExist(user_id);
     
     if(user_name==null) { return true; } else { return false; } }
    
    
   
   public void addUserInfo(UserBean joinUserBean) {
      userDao.addUserInfo(joinUserBean);
   }
   
   public void deleteUser(UserBean deleteUser) {
      userDao.deleteUser(deleteUser.getUser_number());
   }
   
   public void getLoginUserInfo(UserBean tempLoginUserBean) {
      UserBean tempLoginUserBean2=userDao.getLoginUserInfo(tempLoginUserBean);
      
      if(tempLoginUserBean2!=null) {
         loginUser.setUser_number(tempLoginUserBean2.getUser_number());
         loginUser.setUser_name(tempLoginUserBean2.getUser_name());
         loginUser.setUser_id(tempLoginUserBean2.getUser_id());
         loginUser.setUserLogin(true);
      }
   }
   
   public void getModifyUserInfo(UserBean modifyUserBean) {
      UserBean tempModifyUserBean=userDao.getModifyUserInfo(loginUser.getUser_number());
      
      modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
      modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
      modifyUserBean.setUser_number(loginUser.getUser_number());
      
   }
   
   public void userMyPage(UserBean userMyPage) {
      
      UserBean mypage= userDao.userMyPage(loginUser.getUser_number());
      userMyPage.setUser_number(mypage.getUser_number());
      userMyPage.setUser_id(mypage.getUser_id());
      userMyPage.setUser_name(mypage.getUser_name());
      userMyPage.setUser_tel(mypage.getUser_tel());
      userMyPage.setUser_address(mypage.getUser_address());
      userMyPage.setUser_address2(mypage.getUser_address2());
      userMyPage.setUser_address3(mypage.getUser_address3());
      userMyPage.setUser_address4(mypage.getUser_address4());
      userMyPage.setUser_email(mypage.getUser_email());
      //grade????????
      
   }
   
public void userModify(UserBean userMyPage) {
      
      UserBean mypage= userDao.userModify(loginUser.getUser_number());
      userMyPage.setUser_number(mypage.getUser_number());
      userMyPage.setUser_id(mypage.getUser_id());
      userMyPage.setUser_name(mypage.getUser_name());
      userMyPage.setUser_tel(mypage.getUser_tel());
      userMyPage.setUser_address(mypage.getUser_address());
      userMyPage.setUser_address2(mypage.getUser_address2());
      userMyPage.setUser_address3(mypage.getUser_address3());
      userMyPage.setUser_address4(mypage.getUser_address4());
      userMyPage.setUser_email(mypage.getUser_email());
      //grade????????
      
   }
   
   public void modifyUserInfo(UserBean userMyPage) {
      
      userMyPage.setUser_number(loginUser.getUser_number());
      
      userDao.modifyUserInfo(userMyPage);
   }
   
   public void addUseruser(UserInfoBean userInfo) {
	   userDao.addUseruser(userInfo);
   }
   
   public List<UserInfoBean> getUseruser(){
	   return userDao.getUseruser();
   }
   public List<UserInfoBean> getUseruser2(String user_id){
	   return userDao.getUseruser2(user_id);
   }
}