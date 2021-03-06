package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.UserBean;
import wine.beans.UserInfoBean;
import wine.mapper.UserMapper;

@Repository
public class UserDAO {

   @Autowired
   private UserMapper userMapper;
   
   public void addUserInfo(UserBean joinUserBean) {
      userMapper.addUserInfo(joinUserBean);
   }
   
   public String checkUserIdExist(String user_id) {
      return userMapper.checkUserIdExist(user_id);
   }
   
   public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
      return userMapper.getLoginUserInfo(tempLoginUserBean);
   }
   public UserBean getModifyUserInfo(int user_number) {
      return userMapper.getModifyUserInfo(user_number);
   }
   public void modifyUserInfo(UserBean userMyPage) {
      userMapper.modifyUserInfo(userMyPage);
   }
   
   public UserBean userMyPage(int user_number) {
      return userMapper.userMyPage(user_number);
   }
   public UserBean userModify(int user_number) {
      return userMapper.userModify(user_number);
   }
   public void deleteUser(int user_number) {
      userMapper.deleteUser(user_number);
   }
   public void addUseruser(UserInfoBean userInfo) {
	   userMapper.addUseruser(userInfo);
   }
   public List<UserInfoBean> getUseruser(){
	   return userMapper.getUseruser();
   }
   public List<UserInfoBean> getUseruser2(String user_id){
	   return userMapper.getUseruser2(user_id);
   }
}