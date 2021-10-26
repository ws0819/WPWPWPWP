package wine.DAO;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.NoticeBean;
import wine.mapper.NoticeMapper;

@Repository
public class NoticeDAO {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public void addNoticeInfo(NoticeBean writeNoticeBean) {
		//for(int i=0; i<400; i++)
		noticeMapper.addNoticeInfo(writeNoticeBean);
	}
	public List<NoticeBean> getNoticeList(RowBounds rowbounds){
		return noticeMapper.getNoticeList(rowbounds);
	}
	public NoticeBean getNoticeInfo(String notice_title){
		return noticeMapper.getNoticeInfo(notice_title);
	}
	public void modifyNoticeInfo(NoticeBean modifyNoticeBean) {
		noticeMapper.modifyNoticeInfo(modifyNoticeBean);
	}
	public void deleteContentInfo(String notice_title) {
		noticeMapper.deleteContentInfo(notice_title);
	}
	public int getNoticeCnt() {
		return noticeMapper.getNoticeCnt();
	}
}
