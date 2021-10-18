package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	
}
