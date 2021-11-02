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
	
}
