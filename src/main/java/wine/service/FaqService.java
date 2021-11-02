package wine.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import wine.DAO.FaqDAO;
import wine.beans.FaqBean;
import wine.beans.PageBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class FaqService {

	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.pageinationcnt}")
	private int page_pageinationcnt;
	
	@Autowired
	private FaqDAO faqDAO;
	
	public void addFaqInfo(FaqBean writeFaqBean) {
		faqDAO.addFaqInfo(writeFaqBean);
	}
	
	public List<FaqBean> getFaqList(int page){
		int start=(page-1)*page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		return faqDAO.getFaqList(rowBounds);
	}
	public FaqBean getFaqInfo(int faq_number) {
		return faqDAO.getFaqInfo(faq_number);				
	}
	public PageBean getFaqCnt(int currentPage) {
		int content_cnt = faqDAO.getFaqCnt();
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_pageinationcnt);
		
		return pageBean;
	}

}

