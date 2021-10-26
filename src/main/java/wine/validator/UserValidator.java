package wine.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import wine.beans.UserBean;

public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		UserBean userBean= (UserBean) target;
		
		   String BeanName = errors.getObjectName();
		      System.out.println(BeanName);

		      if (BeanName.equals("joinUserBean")||BeanName.equals("userModify")) {
		         if (userBean.getUser_pw().equals(userBean.getUser_pw2()) == false) {
		            errors.rejectValue("user_pw", "NotEquals");  
		            errors.rejectValue("user_pw2", "NotEquals");
		         }

		         
		         if (BeanName.equals("joinUserBean")) {
		            if (userBean.isUserIdExist() == false) {
		               errors.rejectValue("user_id", "CheckMissing");
		            }
		         }
		      }
	}

	
}
