package wine.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import wine.beans.UserBean;

public interface UserMapper {

	@Insert("insert into wine_user(user_number, user_id, user_pw, user_name, user_tel, user_address, user_email) "
			+ "values(user_seq.nextval, #{user_id}, #{user_pw}, #{user_name}, #{user_tel}, #{user_address}, #{user_email})")
	void addUserInfo(UserBean joinUserBean);
	
	@Select("select user_name from wine_user where user_id=#{user_id}")
	String checkUserIdExist(String user_id);
	
	@Select("select user_number,user_name from wine_user where user_id=#{user_id} and user_pw=#{user_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);
	
	
	
}
