package wine.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.ApplicationScope;
import org.springframework.web.context.annotation.SessionScope;

import wine.beans.AdminBean;
import wine.beans.FaqBean;
import wine.beans.UserBean;


@Configuration
public class RootAppContext {
	
	@Bean("loginUser")
	@SessionScope
	public UserBean loginUser() {
		return new UserBean();
	}
	
	//이름으로 구분해서 등록
	@Bean("loginAdminBean")
	@SessionScope
	public AdminBean loginAdminBean() {
		return new AdminBean();
	}
	/*
	 * @Bean("faqContentBean")
	 * 
	 * @SessionScope public FaqBean writeFaqBean() { return new FaqBean(); }
	 */
	
}
