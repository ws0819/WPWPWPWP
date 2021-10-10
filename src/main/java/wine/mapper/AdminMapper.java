package wine.mapper;

import org.apache.ibatis.annotations.Select;

import wine.beans.AdminBean;

public interface AdminMapper {
	
	@Select("select admin_id, admin_pw from admin_table where admin_id=#{admin_id} and admin_pw=#{admin_pw}")
	AdminBean getLoginAdminInfo(AdminBean tempLoginAdminBean);
}
