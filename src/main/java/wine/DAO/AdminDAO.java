package wine.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.AdminBean;
import wine.mapper.AdminMapper;

@Repository
public class AdminDAO {

	@Autowired
	private AdminMapper adminMapper;
	
	public AdminBean getLoginAdminInfo(AdminBean tempLoginAdminBean) {
		return adminMapper.getLoginAdminInfo(tempLoginAdminBean);
	}
}
