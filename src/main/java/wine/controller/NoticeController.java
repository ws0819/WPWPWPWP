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

import wine.beans.NoticeBean;
import wine.service.NoticeService;

@RequestMapping("/notice")
@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/notice_board_read")
	public String notice_board_read(Model model) {
		List<NoticeBean> noticeList = noticeService.getNoticeList();
		List<NoticeBean> noticeList2 = noticeService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/notice_board_read";
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
	public String notice_modify(@ModelAttribute("noticeContentBean") NoticeBean writeNoticeBean) {
		return "notice/notice_modify";
	}
	@PostMapping("/notice_modify_pro")
	public String notice_modify_pro(@ModelAttribute("noticeContentBean") NoticeBean writeNoticeBean, BindingResult result) {
		return "notice/notice_modify";
	}
	@GetMapping("/notice_delete")
	public String notice_delete() {
		return "notice/notice_delete";
	}
}
