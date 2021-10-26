package wine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.ProductDAO;
import wine.beans.CartBean;
import wine.beans.WineProductBean;

@Service
public class ProductService {
	
	@Autowired 
	private ProductDAO productDAO;
	
	public List<WineProductBean> getWineInfo() {
		return productDAO.getWineInfo();
	}
	
	public WineProductBean getOneWineInfo(int wine_number) {
		return productDAO.getOneWineInfo(wine_number);
	}
	
	public List<WineProductBean> getSelectWine(WineProductBean SearchWienBean) {
		return productDAO.getSelectWine(SearchWienBean);
	}
	
	public List<WineProductBean> getAllWineInfo() {
		return productDAO.getAllWineInfo();
	}
	
	public void addCartWine(WineProductBean InsertWineBean) {
		productDAO.addCartWine(InsertWineBean);
	}
	
	public List<CartBean> getCartList() {
		return productDAO.getCartList();
	}
	
	public void updateCartAmount(CartBean cartBean) {
		productDAO.updateCartAmount(cartBean);
	}
	
	public void deleteCart(int product_number) {
		productDAO.deleteCart(product_number);
	}
	
}