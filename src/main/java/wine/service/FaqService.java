package wine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.FaqDAO;
import wine.beans.FaqBean;

@Service
public class FaqService {

	@Autowired
	private FaqDAO faqDAO;
	
	public void addFaqInfo(FaqBean writeFaqBean) {
		faqDAO.addFaqInfo(writeFaqBean);
	}
	
	public List<FaqBean> getFaqList(){
		return faqDAO.getFaqList();
	}
	
	public FaqBean getFaqInfo(int faq_number) {
		return faqDAO.getFaqInfo(faq_number);				
	}


}

