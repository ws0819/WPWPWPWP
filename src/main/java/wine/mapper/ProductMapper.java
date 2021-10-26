package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;


import wine.beans.WineProductBean;

public interface ProductMapper {

	@Select("select wine_number, wine_name, wine_type, wine_price, wine_img from wine_product where wine_number between 137204 and 137214")
	List<WineProductBean> getWineInfo();
	
	@Select("select wine_number, wine_name, wine_type, wine_price, wine_img from wine_product where wine_number=#{wine_number}")
	WineProductBean getOneWineInfo(int wine_number);
	
}