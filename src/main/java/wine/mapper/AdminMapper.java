package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import wine.beans.AdminBean;
import wine.beans.SubscribeBean;
import wine.beans.UserLogBean;

public interface AdminMapper {
	
	@Select("select admin_id, admin_pw from admin_table where admin_id=#{admin_id} and admin_pw=#{admin_pw}")
	AdminBean getLoginAdminInfo(AdminBean tempLoginAdminBean);
	
	@Select("select * from user_log")
	List<UserLogBean> getUserLog();
	
	@Select("select * from subscribe")
	List<SubscribeBean> getSubscribe();
	
	//저거 블랙이랑 3 변경
	@Insert("insert into subscribe values(subscribe_seq.nextval, #{subscribe_grade}, #{subscribe_sommliernumber}, (to_char(sysdate, 'yyyy-mm-dd')), (to_char(sysdate + 30, 'yyyy-mm-dd')), #{user_id}, #{user_number})")
	void addSubscribe(String subscribe_grade, int subscribe_sommliernumber, String user_id, int user_number);
}