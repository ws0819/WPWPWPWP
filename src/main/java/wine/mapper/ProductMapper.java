package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import wine.beans.CartBean;
import wine.beans.WineProductBean;

public interface ProductMapper {

	@Select("select wine_idx, wine_number, wine_name, wine_type, wine_price, wine_img from wine_product where wine_idx between 0 and 7")
	List<WineProductBean> getWineInfo();
	
	@Select("select wine_idx, wine_number, wine_name, wine_type, wine_price, wine_img from wine_product where wine_idx=#{wine_idx}")
	WineProductBean getOneWineInfo(int wine_number);
	
	@Select("select * from wine_product")
	List<WineProductBean> getAllWineInfo();
	
	@Select("select distinct wine_idx, wine_number, wine_type, wine_price, wine_name from wine_product where wine_nation = #{wine_nation} and wine_type = #{wine_type} "
			+ "or wine_sweet = #{wine_sweet} or wine_acidity = #{wine_acidity} or wine_body = #{wine_body} or wine_tannin = #{wine_tannin} ")
	List<WineProductBean> getSelectWine(WineProductBean SearchWienBean);
	
	@Insert("insert into cart values(cart_seq.nextval , #{wine_number} , sysdate, 1)")
	void addCartWine(WineProductBean InsertWineBean);
	
	@Select("select distinct * "
			+ "from cart,wine_product "
			+ "where cart.product_number=wine_product.wine_number")
	List<CartBean> getCartList();
	
	@Update("update cart set cart_amount=#{cart_amount} where product_number=#{product_number}")
	void updateCartAmount(CartBean cartBean);
	
	@Delete("delete from cart where product_number=#{product_number}")
	void deleteCart(int product_number);
}