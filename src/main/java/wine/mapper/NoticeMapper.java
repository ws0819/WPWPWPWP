package wine.mapper;

import org.apache.ibatis.annotations.Insert;

import wine.beans.NoticeBean;

public interface NoticeMapper {

	@Insert("insert into notice(notice_number, notice_title, notice_content, notice_date) values(NOTICE_SEQ.nextval, #{notice_title}, #{notice_content}, sysdate)")
	void addNoticeInfo(NoticeBean writeNoticeBean);
	
}
