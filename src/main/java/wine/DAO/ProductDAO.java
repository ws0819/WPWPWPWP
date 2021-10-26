package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.CartBean;
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
	
	public List<WineProductBean> getSelectWine(WineProductBean SearchWienBean) {
		return productMapper.getSelectWine(SearchWienBean);
	}
	
	public List<WineProductBean> getAllWineInfo() {
		return productMapper.getAllWineInfo();
	}
	
	public void addCartWine(WineProductBean InsertWineBean) {
		productMapper.addCartWine(InsertWineBean);
	}
	
	public List<CartBean> getCartList() {
		return productMapper.getCartList();
	}
	
	public void updateCartAmount(CartBean cartBean) {
		productMapper.updateCartAmount(cartBean);
	}
	
	public void deleteCart(int product_number) {
		productMapper.deleteCart(product_number);
	}
	
}
