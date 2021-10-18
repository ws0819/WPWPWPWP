package wine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.ProductDAO;
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
	
}