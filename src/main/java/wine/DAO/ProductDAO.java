package wine.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.CartBean;
import wine.beans.ProductOrderBean;
import wine.beans.WineProductBean;
import wine.mapper.ProductMapper;

@Repository
public class ProductDAO {

	@Autowired 
	private ProductMapper productMapper;
	
	public List<WineProductBean> getWineInfo() {
		return productMapper.getWineInfo();
	}
	
	public WineProductBean getOneWineInfo(int wine_number) {
		return productMapper.getOneWineInfo(wine_number);
	}
	
	public List<WineProductBean> getSelectWine(WineProductBean SearchWienBean, RowBounds rowbounds) {
		return productMapper.getSelectWine(SearchWienBean,rowbounds);
	}
	
	public List<WineProductBean> getAllWineInfo(RowBounds rowbounds, String wine_type) {
		return productMapper.getAllWineInfo(rowbounds,wine_type);
	}
	
	public void addCartWine(WineProductBean InsertWineBean) {
		productMapper.addCartWine(InsertWineBean);
	}
	
	public int getCartTotalPrice(String user_id) {
		return productMapper.getCartTotalPrice(user_id);
	}
	
	public List<CartBean> getCartList(String user_id) {
		return productMapper.getCartList(user_id);
	}
	
	public void updateCartAmount(CartBean cartBean) {
		productMapper.updateCartAmount(cartBean);
	}
	
	public void deleteCart(int product_number) {
		productMapper.deleteCart(product_number);
	}
	
	public int getWineCount(String wine_type) {
		return productMapper.getWineCount(wine_type);
	}
	
	public int getSearchWineCount(WineProductBean SearchWienBean) {
		return productMapper.getSearchWineCount(SearchWienBean);
	}
	
	public void insertOrder(ProductOrderBean productOrderBean) {
		productMapper.insertOrder(productOrderBean);
	}
	
}
