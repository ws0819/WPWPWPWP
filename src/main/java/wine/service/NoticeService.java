package wine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.NoticeDAO;
import wine.beans.NoticeBean;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;

	public void addNoticeInfo(NoticeBean writeNoticeBean) {
		noticeDAO.addNoticeInfo(writeNoticeBean);
	}
	public List<NoticeBean> getNoticeList(){
		return noticeDAO.getNoticeList();
	}
	public NoticeBean getNoticeInfo(String notice_title){
		return noticeDAO.getNoticeInfo(notice_title);
	}
	public void modifyContentInfo(NoticeBean writeNoticeBean) {
		noticeDAO.modifyContentInfo(writeNoticeBean);
	}
	public void deleteContentInfo(String notice_title) {
		noticeDAO.deleteContentInfo(notice_title);
	}
}
/*
 * @Resource(name="loginAdminBean") private AdminBean loginAdminBean;
 */
//writeNoticeBean.setNotice_admin_id(loginAdminBean.getAdmin_id());