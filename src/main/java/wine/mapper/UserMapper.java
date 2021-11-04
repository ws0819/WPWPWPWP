package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import wine.beans.UserBean;
import wine.beans.UserInfoBean;

public interface UserMapper {

   @Insert("insert into wine_user(user_number, user_id, user_pw, user_name, user_tel, user_address, user_address2, user_address3, user_address4, user_email, user_signdate) "
         + "values(user_seq.nextval, #{user_id}, #{user_pw}, #{user_name}, #{user_tel}, #{user_address}, #{user_address2}, #{user_address3}, #{user_address4}, #{user_email}, sysdate)")
   void addUserInfo(UserBean joinUserBean);
   
   @Select("select user_name from wine_user where user_id=#{user_id}")
   String checkUserIdExist(String user_id);
   
   @Select("select * from wine_user where user_number=#{user_number}")
   UserBean userMyPage(int user_number);
   
   @Select("select * from wine_user where user_id=#{user_id} and user_pw=#{user_pw}")
   UserBean getLoginUserInfo(UserBean tempLoginUserBean);
   
   @Select("select user_id, user_name from wine_user where user_number=#{user_number}")
   UserBean getModifyUserInfo(int user_number);
   
   @Update("update wine_user set user_pw=#{user_pw}, user_tel=#{user_tel}, user_address=#{user_address}, user_address2=#{user_address2}, user_address3=#{user_address3}, user_address4=#{user_address4}, user_email=#{user_email} where user_number=#{user_number} ")
   void modifyUserInfo(UserBean userMyPage);
   
   @Select("select * from wine_user where user_number=#{user_number}")
   UserBean userModify(int user_number);
   
   @Delete("delete from wine_user where user_number=#{user_number}")
   void deleteUser(int user_number);
   
   @Insert("insert into user_info values(#{user_number}, #{user_id}, #{user_subscribe}, #{user_point})")
   void addUseruser(UserInfoBean userInfo);
   
   @Select("select * from user_info")
   List<UserInfoBean> getUseruser();
   
   @Select("select * from user_info where user_id = #{user_id}")
   List<UserInfoBean> getUseruser2(String user_id);
}