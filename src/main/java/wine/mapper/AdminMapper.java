package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import wine.beans.AdminBean;
import wine.beans.ProductOrderBean;
import wine.beans.SommelierBean;
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
	@Insert("insert into subscribe(subscribe_number, subscribe_grade, subscribe_sommliernumber, subscribe_date, subscribe_enddate, user_id, user_number) values(subscribe_seq.nextval, #{subscribe_grade}, #{subscribe_sommliernumber}, (to_char(sysdate, 'yyyy-mm-dd')), (to_char(sysdate + 30, 'yyyy-mm-dd')), #{user_id}, #{user_number})")
	void addSubscribe(SubscribeBean subscribeBean);
	
	@Select("select * from product_order")
	List<ProductOrderBean> getOrder();
	
	@Select("select * from sommelier")
	List<SommelierBean> getSommelier();
}