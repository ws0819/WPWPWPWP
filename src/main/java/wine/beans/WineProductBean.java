package wine.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WineProductBean {
	
	private int wine_number;
	private String wine_name;
	private int wine_stock;
	private String wine_type;
	private int wine_price;
	private String wine_nation;
	private int wine_year;
	private int wine_ml;
	private String wine_img;
	private String wine_producer;
	private String wine_local;
	private String wine_variety;
	private String wine_sweet;
	private String wine_acidity;
	private String wine_body;
	private String wine_tannin;
	
	public WineProductBean() {
		wine_img="dddd.jpg";
	}
	
}
