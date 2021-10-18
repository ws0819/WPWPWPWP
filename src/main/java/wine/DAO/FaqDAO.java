package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.FaqBean;
import wine.beans.NoticeBean;
import wine.mapper.FaqMapper;
import wine.mapper.NoticeMapper;

@Repository
public class FaqDAO {

	@Autowired
	private FaqMapper faqMapper;
	
	public void addFaqInfo(FaqBean writeFaqBean) {
		faqMapper.addFaqInfo(writeFaqBean);
	}
	public List<FaqBean> getFaqList(){
		return faqMapper.getFaqList();
	}
	public FaqBean getFaqInfo(int faq_number){
		return faqMapper.getFaqInfo(faq_number);
	}
	


	
}
