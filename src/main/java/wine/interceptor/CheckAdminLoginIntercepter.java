package wine.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import wine.beans.AdminBean;

public class CheckAdminLoginIntercepter implements HandlerInterceptor{
	//로그인 여부를 판단하는 객체
	private AdminBean loginAdminBean;
	
	public CheckAdminLoginIntercepter(AdminBean loginAdminBean) {
		this.loginAdminBean = loginAdminBean;
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(loginAdminBean.isAdminLogin()==false) {
			//로그인이 안된 상태의 경로 가져오기
			String contextPath = request.getContextPath();
			//로그인이 안되어있으니까 웹에게 not_login을 요청
			response.sendRedirect(contextPath + "/admin/admin_not");
			return false; //이 다음 단계로 이동하지 않음
		}
		
		return true;
	}
}
