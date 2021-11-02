package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.AdminBean;
import wine.beans.SubscribeBean;
import wine.beans.UserLogBean;
import wine.mapper.AdminMapper;

@Repository
public class AdminDAO {

	@Autowired
	private AdminMapper adminMapper;
	
	public AdminBean getLoginAdminInfo(AdminBean tempLoginAdminBean) {
		return adminMapper.getLoginAdminInfo(tempLoginAdminBean);
	}
	public List<UserLogBean> getUserLog(){
		return adminMapper.getUserLog();
	}
	public List<SubscribeBean> getSubscirbe(){
		return adminMapper.getSubscribe();
	}
	public void addSubscribe(String subscribe_grade, int subscribe_sommliernumber, String user_id, int user_number) {
		adminMapper.addSubscribe(subscribe_grade, subscribe_sommliernumber, user_id, user_number);
	}
}
