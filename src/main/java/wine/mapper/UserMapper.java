package wine.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.DeleteMapping;

import wine.beans.UserBean;

public interface UserMapper {

   @Insert("insert into wine_user(user_number, user_id, user_pw, user_name, user_tel, user_address, user_address2, user_address3, user_address4, user_email, user_signdate) "
         + "values(user_seq.nextval, #{user_id}, #{user_pw}, #{user_name}, #{user_tel}, #{user_address}, #{user_address2}, #{user_address3}, #{user_address4}, #{user_email}, sysdate)")
   void addUserInfo(UserBean joinUserBean);
   
   @Select("select user_name from wine_user where user_id=#{user_id}")
   String checkUserIdExist(String user_id);
   
   @Select("select * from wine_user where user_number=#{user_number}")
   UserBean userMyPage(int user_number);
   
   @Select("select user_number,user_name from wine_user where user_id=#{user_id} and user_pw=#{user_pw}")
   UserBean getLoginUserInfo(UserBean tempLoginUserBean);
   
   @Select("select user_id, user_name from wine_user where user_number=#{user_number}")
   UserBean getModifyUserInfo(int user_number);
   
   @Update("update wine_user set user_pw=#{user_pw}, user_tel=#{user_tel}, user_address=#{user_address}, user_address2=#{user_address2}, user_address3=#{user_address3}, user_address4=#{user_address4}, user_email=#{user_email} where user_number=#{user_number} ")
   void modifyUserInfo(UserBean userMyPage);
   
   @Select("select * from wine_user where user_number=#{user_number}")
   UserBean userModify(int user_number);
   
   @Delete("delete from wine_user where user_number=#{user_number}")
   void deleteUser(int user_number);
}