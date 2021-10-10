package wine.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.AdminDAO;
import wine.beans.AdminBean;

@Service
public class AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Resource(name="loginAdminBean")
	private AdminBean loginAdminBean;
	
	public void getLoginAdminInfo(AdminBean tempLoginAdminBean) {
		AdminBean tempLoginAdminBean2 = adminDAO.getLoginAdminInfo(tempLoginAdminBean);
		if(tempLoginAdminBean2 != null) {
			loginAdminBean.setAdmin_id(tempLoginAdminBean2.getAdmin_id());
			loginAdminBean.setAdmin_pw(tempLoginAdminBean2.getAdmin_pw());
			loginAdminBean.setAdminLogin(true); //로그인성공
		}
	}
}
