package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;



import wine.beans.FaqBean;
import wine.beans.NoticeBean;

public interface FaqMapper {

	
	@Select("select faq_number, faq_username, faq_email, faq_message, faq_date from faq")
	List<FaqBean> getFaqList();
	
	
	
	@Insert("insert into faq(faq_number, faq_username, faq_email,faq_message,faq_date) values(faq_seq.nextval, #{faq_username}, #{faq_email} , #{faq_message} ,sysdate)")
	void addFaqInfo(FaqBean writeFaqBean);
	
	@Select("select faq_username, faq_email, faq_message, faq_date from faq where faq_number = #{faq_number}")
	FaqBean getFaqInfo(int faq_number);

}
