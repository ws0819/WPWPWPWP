package wine.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import wine.beans.UserBean;

public class TopMenuInterceptor implements HandlerInterceptor{

   private UserBean loginUser;
   
   public TopMenuInterceptor(UserBean loginUser) {
      this.loginUser=loginUser;
   }
   
   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      
      request.setAttribute("loginUser", loginUser);
      
      return true;
   }
   
}