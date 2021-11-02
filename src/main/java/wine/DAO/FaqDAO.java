package wine.DAO;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.FaqBean;
import wine.mapper.FaqMapper;

@Repository
public class FaqDAO {

	@Autowired
	private FaqMapper faqMapper;
	
	public void addFaqInfo(FaqBean writeFaqBean) {
		//for(int i=0; i<400; i++)
		faqMapper.addFaqInfo(writeFaqBean);
	}
	public List<FaqBean> getFaqList(RowBounds rowbounds){
		return faqMapper.getFaqList(rowbounds);
	}
	public FaqBean getFaqInfo(int faq_number){
		return faqMapper.getFaqInfo(faq_number);
	}
	public int getFaqCnt() {
		return faqMapper.getFaqCnt();
	}
}
