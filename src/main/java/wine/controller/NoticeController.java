package wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.AdminBean;
import wine.beans.NoticeBean;
import wine.beans.PageBean;
import wine.service.NoticeService;

@RequestMapping("/notice")
@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private AdminBean loginAdminBean;
	
	@GetMapping("/notice_board_read")
	public String notice_board_read(@RequestParam(value="page", defaultValue = "1") int page , Model model) {
		List<NoticeBean> noticeList = noticeService.getNoticeList(page);
		model.addAttribute("noticeList", noticeList);
		PageBean pageBean = noticeService.getNoticeCnt(page);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		return "notice/notice_board_read";
	}
	@GetMapping("/notice_read")
	public String notice_read(@RequestParam("notice_title") String notice_title, @RequestParam("notice_number") int notice_number, Model model) {
		model.addAttribute("notice_number", notice_number);
		NoticeBean noticeInfo = noticeService.getNoticeInfo(notice_title);
		model.addAttribute("noticeInfo", noticeInfo);
		boolean adminLogin = loginAdminBean.isAdminLogin();
		model.addAttribute("adminLogin", adminLogin);
		return "notice/notice_read";
	}
	@GetMapping("/notice_write")
	public String notice_write(@ModelAttribute("noticeContentBean") NoticeBean writeNoticeBean) {
		return "notice/notice_write";
	}
	@PostMapping("/notice_write_pro")
	public String notice_pro(@ModelAttribute("noticeContentBean") NoticeBean writeNoticeBean, BindingResult result) {
		if(result.hasErrors()) {
			return "notice/notice_write";
		}
		noticeService.addNoticeInfo(writeNoticeBean);
		return "notice/notice_success";
	}
	@GetMapping("/notice_modify")
	public String notice_modify(@RequestParam("notice_number") int notice_number, @RequestParam("noticeModify_title") String notice_title, @ModelAttribute("noticeModifyBean") NoticeBean noticeModifyBean, Model model) {
		model.addAttribute("notice_number",notice_number);
		NoticeBean noticeModifyTemp = noticeService.getNoticeInfo(notice_title);
		noticeModifyBean.setNotice_title(notice_title);
		noticeModifyBean.setNotice_date(noticeModifyTemp.getNotice_date());
		noticeModifyBean.setNotice_content(noticeModifyTemp.getNotice_content());
		noticeModifyBean.setNotice_number(notice_number);
		return "notice/notice_modify";
	}
	@PostMapping("/notice_modify_pro")
	public String notice_modify_pro(@RequestParam("notice_number") int notice_number, @ModelAttribute("noticeModifyBean") NoticeBean noticeModifyBean, BindingResult result) {
		if(result.hasErrors()) {
			return "notice/notice_modify";
		}
		noticeService.modifyNoticeInfo(noticeModifyBean);

		return "notice/notice_modify_success";
	}
	@GetMapping("/notice_delete")
	public String notice_delete(@RequestParam("noticeDelete_title") String notice_title) {
		noticeService.deleteContentInfo(notice_title);
		return "notice/notice_delete";
	}
}
