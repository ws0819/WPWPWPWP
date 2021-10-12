package wine.service;

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
}
/*
 * @Resource(name="loginAdminBean") private AdminBean loginAdminBean;
 */
//writeNoticeBean.setNotice_admin_id(loginAdminBean.getAdmin_id());