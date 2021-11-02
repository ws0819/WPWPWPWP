package wine.beans;

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
	private int wine_idx;
	private String user_id;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public WineProductBean() {
		if(wine_img==null) {
			wine_img="red022.jpg";
		}
	}

	public int getWine_number() {
		return wine_number;
	}

	public void setWine_number(int wine_number) {
		this.wine_number = wine_number;
	}

	public String getWine_name() {
		return wine_name;
	}

	public void setWine_name(String wine_name) {
		this.wine_name = wine_name;
	}

	public int getWine_stock() {
		return wine_stock;
	}

	public void setWine_stock(int wine_stock) {
		this.wine_stock = wine_stock;
	}

	public String getWine_type() {
		return wine_type;
	}

	public void setWine_type(String wine_type) {
		this.wine_type = wine_type;
	}

	public int getWine_price() {
		return wine_price;
	}

	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}

	public String getWine_nation() {
		return wine_nation;
	}

	public void setWine_nation(String wine_nation) {
		this.wine_nation = wine_nation;
	}

	public int getWine_year() {
		return wine_year;
	}

	public void setWine_year(int wine_year) {
		this.wine_year = wine_year;
	}

	public int getWine_ml() {
		return wine_ml;
	}

	public void setWine_ml(int wine_ml) {
		this.wine_ml = wine_ml;
	}

	public String getWine_img() {
		return wine_img;
	}

	public void setWine_img(String wine_img) {
		this.wine_img = wine_img;
	}

	public String getWine_producer() {
		return wine_producer;
	}

	public void setWine_producer(String wine_producer) {
		this.wine_producer = wine_producer;
	}

	public String getWine_local() {
		return wine_local;
	}

	public void setWine_local(String wine_local) {
		this.wine_local = wine_local;
	}

	public String getWine_variety() {
		return wine_variety;
	}

	public void setWine_variety(String wine_variety) {
		this.wine_variety = wine_variety;
	}

	public String getWine_sweet() {
		return wine_sweet;
	}

	public void setWine_sweet(String wine_sweet) {
		this.wine_sweet = wine_sweet;
	}

	public String getWine_acidity() {
		return wine_acidity;
	}

	public void setWine_acidity(String wine_acidity) {
		this.wine_acidity = wine_acidity;
	}

	public String getWine_body() {
		return wine_body;
	}

	public void setWine_body(String wine_body) {
		this.wine_body = wine_body;
	}

	public String getWine_tannin() {
		return wine_tannin;
	}

	public void setWine_tannin(String wine_tannin) {
		this.wine_tannin = wine_tannin;
	}

	public int getWine_idx() {
		return wine_idx;
	}

	public void setWine_idx(int wine_idx) {
		this.wine_idx = wine_idx;
	}

}
