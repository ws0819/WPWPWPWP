package wine.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import wine.DAO.NoticeDAO;
import wine.beans.NoticeBean;
import wine.beans.PageBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class NoticeService {
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.pageinationcnt}")
	private int page_pageinationcnt;
	
	@Autowired
	private NoticeDAO noticeDAO;

	public void addNoticeInfo(NoticeBean writeNoticeBean) {
		noticeDAO.addNoticeInfo(writeNoticeBean);
	}
	public List<NoticeBean> getNoticeList(int page){
		int start=(page-1)*page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		return noticeDAO.getNoticeList(rowBounds);
	}
	public NoticeBean getNoticeInfo(String notice_title){
		return noticeDAO.getNoticeInfo(notice_title);
	}
	public void modifyNoticeInfo(NoticeBean modifyNoticeBean) {
		noticeDAO.modifyNoticeInfo(modifyNoticeBean);
	}
	public void deleteContentInfo(String notice_title) {
		noticeDAO.deleteContentInfo(notice_title);
	}
	public PageBean getNoticeCnt(int currentPage) {
		int content_cnt = noticeDAO.getNoticeCnt();
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_pageinationcnt);
		
		return pageBean;
	}
	public List<NoticeBean> getNoticeList(int a, int page) {
		// TODO Auto-generated method stub
		return null;
	}
}
/*
 * @Resource(name="loginAdminBean") private AdminBean loginAdminBean;
 */
//writeNoticeBean.setNotice_admin_id(loginAdminBean.getAdmin_id());