package wine.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import wine.beans.AdminBean;


@Configuration
public class RootAppContext {
	
	//이름으로 구분해서 등록
	@Bean("loginAdminBean")
	@SessionScope
	public AdminBean loginAdminBean() {
		return new AdminBean();
	}
	
}
