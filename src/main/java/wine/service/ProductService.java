package wine.service;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import wine.DAO.ProductDAO;
import wine.beans.AdminBean;
import wine.beans.CartBean;
import wine.beans.PageBean;
import wine.beans.ProductOrderBean;
import wine.beans.UserBean;
import wine.beans.WineProductBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ProductService {
	
	@Value("${page.winelistcnt}")
	private int page_listcnt;
	
	@Value("${page.pageinationcnt}")
	private int page_pageinationcnt;
	
	@Resource(name="loginUser")
	private UserBean loginUser;
	
	@Autowired 
	private ProductDAO productDAO;
	
	public List<WineProductBean> getWineInfo() {
		return productDAO.getWineInfo();
	}
	
	public WineProductBean getOneWineInfo(int wine_number) {
		return productDAO.getOneWineInfo(wine_number);
	}
	
	public List<WineProductBean> getSelectWine(WineProductBean SearchWienBean, int page) {
		int start=(page-1)*page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		return productDAO.getSelectWine(SearchWienBean, rowBounds);
	}
	
	public List<WineProductBean> getSelectWine_name(WineProductBean SearchWienBean, int page) {
		int start=(page-1)*page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		return productDAO.getSelectWine_name(SearchWienBean, rowBounds);
	}
	
	
	public List<WineProductBean> getAllWineInfo(int page,String wine_type) {
		int start=(page-1)*page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		return productDAO.getAllWineInfo(rowBounds, wine_type);
	}
	
	public void addCartWine(WineProductBean InsertWineBean) {
		productDAO.addCartWine(InsertWineBean);		
	}
	
	public int getCartTotalPrice(String user_id) {
		return productDAO.getCartTotalPrice(user_id);
	}
	
	public List<CartBean> getCartList(String user_id) {
		return productDAO.getCartList(user_id);
	}
	
	public void updateCartAmount(CartBean cartBean) {
		productDAO.updateCartAmount(cartBean);
	}
	
	public void deleteCart(int product_number) {
		productDAO.deleteCart(product_number);
	}
	
	public PageBean getWineCount(int currentPage, String wine_type) {
		int content_cnt = productDAO.getWineCount(wine_type);
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_pageinationcnt);
		
		return pageBean;
	}
	
	public PageBean getSearchWineCount(int currentPage,WineProductBean SearchWienBean) {
		int content_cnt = productDAO.getSearchWineCount(SearchWienBean);
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_pageinationcnt);
		return pageBean;
	}
	
	public void insertOrder(ProductOrderBean productOrderBean) {
		productDAO.insertOrder(productOrderBean);
	}
	
	
}