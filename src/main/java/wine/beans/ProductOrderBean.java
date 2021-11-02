package wine.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductOrderBean {
	
	private int order_number;
	private String order_id;
	private String order_date;
	private String order_name;
	private String order_address;
	private String order_tel;
	private int order_price;
	private String order_payhow;
	private String order_payname;
	private String order_bankaccount;
	private int product_number;
	private int cart_number;
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getOrder_payhow() {
		return order_payhow;
	}
	public void setOrder_payhow(String order_payhow) {
		this.order_payhow = order_payhow;
	}
	public String getOrder_payname() {
		return order_payname;
	}
	public void setOrder_payname(String order_payname) {
		this.order_payname = order_payname;
	}
	public String getOrder_bankaccount() {
		return order_bankaccount;
	}
	public void setOrder_bankaccount(String order_bankaccount) {
		this.order_bankaccount = order_bankaccount;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public int getCart_number() {
		return cart_number;
	}
	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}
	
	
}
