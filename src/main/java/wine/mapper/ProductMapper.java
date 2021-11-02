package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import wine.beans.CartBean;
import wine.beans.ProductOrderBean;
import wine.beans.WineProductBean;

public interface ProductMapper {

	@Select("select * from wine_product where wine_idx in (14,15,32,70,72,73,76,78) ")
	List<WineProductBean> getWineInfo();
	
	@Select("select * from wine_product where wine_idx=#{wine_idx}")
	WineProductBean getOneWineInfo(int wine_number);
	
	@Select("select * from wine_product where wine_img is not null and wine_type=#{wine_type}")
	List<WineProductBean> getAllWineInfo(RowBounds rowbounds, String wine_type);
	
	@Select("select distinct wine_idx, wine_number, wine_type, wine_price, wine_name, wine_img from wine_product where wine_nation = #{wine_nation} and wine_type = #{wine_type} "
			+ "and wine_sweet = #{wine_sweet} and wine_acidity = #{wine_acidity} and wine_body = #{wine_body} and wine_tannin = #{wine_tannin}")
	List<WineProductBean> getSelectWine(WineProductBean SearchWienBean, RowBounds rowbounds);
	
	@Select("select distinct wine_idx, wine_number, wine_type, wine_price, wine_name, wine_img from wine_product where wine_name like '%'||#{wine_name}||'%'")
	List<WineProductBean> getSelectWine_name(WineProductBean SearchWienBean, RowBounds rowbounds);
	
	@Select("select * from wine_product where wine_name=%#{wine_name}%")
	List<WineProductBean> getSelectWineName(WineProductBean SearchWienBean);
	
	@Insert("insert into cart(cart_number,product_number,cart_date,cart_amount,user_id) values(cart_seq.nextval , #{wine_number} , sysdate, 1,#{user_id})" )
	void addCartWine(WineProductBean InsertWineBean);
	
	@Select("select distinct * "
			+ "from cart,wine_product "
			+ "where cart.product_number=wine_product.wine_number and user_id=#{user_id}")
	List<CartBean> getCartList(String user_id);
	
	@Select("select sum(wine_price*cart_amount) as total_price from cart,wine_product where product_number=wine_number and user_id=#{user_id}")
	int getCartTotalPrice(String user_id);
			
	@Update("update cart set cart_amount=#{cart_amount} where product_number=#{product_number}")
	void updateCartAmount(CartBean cartBean);

	@Delete("delete from cart where product_number=#{product_number}")
	void deleteCart(int product_number);
	
	@Select("select count(*) from wine_product where wine_img is not null and wine_type=#{wine_type}")
	int getWineCount(String wine_type);
	
	@Select("select count(*) from wine_product where wine_nation = #{wine_nation} and wine_type = #{wine_type} "
			+ "and wine_sweet = #{wine_sweet} and wine_acidity = #{wine_acidity} and wine_body = #{wine_body} and wine_tannin = #{wine_tannin} ")
	int getSearchWineCount(WineProductBean SearchWienBean);
	
	@Insert("insert into product_order values(product_order_seq.nextval,#{order_id},sysdate,#{order_name},#{order_address},#{order_tel},#{order_price},#{order_payhow},#{order_payname})")
	void insertOrder(ProductOrderBean productOrderBean);
	
}