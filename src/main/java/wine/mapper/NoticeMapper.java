package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import wine.beans.NoticeBean;

public interface NoticeMapper {

	@Insert("insert into notice(notice_number, notice_title, notice_content, notice_date) values(NOTICE_SEQ.nextval, #{notice_title}, #{notice_content}, sysdate)")
	void addNoticeInfo(NoticeBean writeNoticeBean);
	
	@Select("select notice_number, notice_title, notice_content, notice_date from notice")
	List<NoticeBean> getNoticeList(RowBounds rowbounds);
	
	@Select("select notice_title, notice_content, notice_date from notice where notice_title = #{notice_title}")
	NoticeBean getNoticeInfo(String notice_title);
	
	@Update("update notice set notice_title = #{notice_title}, notice_content = #{notice_content}, notice_date = sysdate where notice_number = #{notice_number}")
	void modifyNoticeInfo(NoticeBean modifyNoticeBean);
	
	@Delete("delete from notice where notice_title= #{notice_title}")
	void deleteContentInfo(String notice_title);
	
	@Select("select count(*) from notice")
	int getNoticeCnt();
}
