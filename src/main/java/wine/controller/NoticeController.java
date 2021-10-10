package wine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notice")
@Controller
public class NoticeController {

	@GetMapping("/notice")
	public String notice() {
		return "notice/notice";
	}
	@GetMapping("/notice_write")
	public String notice_write() {
		return "notice/notice_write";
	}
}
