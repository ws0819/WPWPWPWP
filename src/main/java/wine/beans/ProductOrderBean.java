package wine.beans;

public class ProductOrderBean {
   
   private int order_number;
   private String order_id;
   private String order_date;
   private String order_name;
   private String order_tel;
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
   
   public String getOrder_tel() {
      return order_tel;
   }
   public void setOrder_tel(String order_tel) {
      this.order_tel = order_tel;
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
   
   
   private String postcode;
   private String roadAddress;
   private String jibunaddress;
   private String order_email;
   private String order_message;
   public String getPostcode() {
      return postcode;
   }
   public void setPostcode(String postcode) {
      this.postcode = postcode;
   }
   public String getRoadAddress() {
      return roadAddress;
   }
   public void setRoadAddress(String roadAddress) {
      this.roadAddress = roadAddress;
   }
   
   public String getJibunaddress() {
      return jibunaddress;
   }
   public void setJibunaddress(String jibunaddress) {
      this.jibunaddress = jibunaddress;
   }
   public String getOrder_email() {
      return order_email;
   }
   public void setOrder_email(String order_email) {
      this.order_email = order_email;
   }
   public String getOrder_message() {
      return order_message;
   }
   public void setOrder_message(String order_message) {
      this.order_message = order_message;
   }
   
   
}