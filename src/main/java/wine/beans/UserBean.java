package wine.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserBean {
	
	private int user_number;
	
	@Size(min=4, max=12)
	@Pattern(regexp = "[a-zA-z0-9]*")
	private String user_id;
	@Size(min=2, max=12)
	@Pattern(regexp="[가-힣a-zA-z]*")
	private String user_name;//디비추가
	@Size(min=6, max=12)
	@Pattern(regexp="[a-zA-z0-9]*")
	private String user_pw;
	@Size(min=6, max=12)
	@Pattern(regexp="[a-zA-z0-9]*")
	private String user_pw2; //디비추가
	
	private String user_tel;
	private String user_address;
	private String user_email;
	private String user_gender;
	private String user_logindate;
	private String user_signdate;
	
	private boolean userIdExist;
	private boolean userLogin;
	
	public UserBean() {
		this.userIdExist=false;
		this.userLogin=false;
	}
	
}
