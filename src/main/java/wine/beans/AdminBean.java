package wine.beans;

public class AdminBean {
	
	private String admin_id;
	private String admin_pw;
	private int order_number;
	
	private boolean AdminIdExist;
	private boolean AdminLogin;
	
	public AdminBean() {
		this.AdminIdExist = false;
		this.AdminLogin = false;
	}
	
	public boolean isAdminIdExist() {
		return AdminIdExist;
	}
	public void setAdminIdExist(boolean adminIdExist) {
		AdminIdExist = adminIdExist;
	}
	public boolean isAdminLogin() {
		return AdminLogin;
	}
	public void setAdminLogin(boolean adminLogin) {
		AdminLogin = adminLogin;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	
	
}
