package wine.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import wine.beans.UserBean;

public class CheckLoginInterceptor implements HandlerInterceptor {
	

	private UserBean loginUser;
	
	public CheckLoginInterceptor(UserBean loginUser) {
		this.loginUser=loginUser;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(loginUser.isUserLogin() == false) {
			
			String contextPath=request.getContextPath();
			
			response.sendRedirect(contextPath + "/user/not_login");
		
			return false;
		}
		
		return true;
	}
	
}
