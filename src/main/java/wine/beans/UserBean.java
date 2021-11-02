package wine.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	private String user_address2;
	private String user_address3;
	private String user_address4;
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

	public String getUser_address2() {
		return user_address2;
	}

	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}

	public String getUser_address3() {
		return user_address3;
	}

	public void setUser_address3(String user_address3) {
		this.user_address3 = user_address3;
	}

	public String getUser_address4() {
		return user_address4;
	}

	public void setUser_address4(String user_address4) {
		this.user_address4 = user_address4;
	}

	public int getUser_number() {
		return user_number;
	}

	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_pw2() {
		return user_pw2;
	}

	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_logindate() {
		return user_logindate;
	}

	public void setUser_logindate(String user_logindate) {
		this.user_logindate = user_logindate;
	}

	public String getUser_signdate() {
		return user_signdate;
	}

	public void setUser_signdate(String user_signdate) {
		this.user_signdate = user_signdate;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	
}
