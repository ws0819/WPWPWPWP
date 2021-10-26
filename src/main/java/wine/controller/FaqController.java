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

import wine.beans.FaqBean;
import wine.beans.NoticeBean;
import wine.beans.PageBean;
import wine.service.FaqService;



@RequestMapping("/faq")
@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@GetMapping("/faq_board")
	public String faq_board(@RequestParam(value="page", defaultValue = "1") int page , Model model) {
		List<FaqBean> faqList = faqService.getFaqList();
		model.addAttribute("faqList",faqList);
		PageBean pageBean = faqService.getFaqCnt(page);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		return "faq/faq_board";
	}
	
	@GetMapping("/faq_read")
	public String faq_read(@RequestParam("faq_number") int faq_number, Model model) {
		FaqBean faqInfo = faqService.getFaqInfo(faq_number);
		model.addAttribute("faqInfo", faqInfo);
		return "faq/faq_read";
	}

	@GetMapping("/faq_write")
	public String faq_write(@ModelAttribute("faqContentBean") FaqBean writeFaqeBean) {
		return "faq/faq_write";
	}
	
	
	@PostMapping("/faq_write_pro")
	public String faq_pro(@ModelAttribute("faqContentBean") FaqBean writeFaqBean, BindingResult result) {
		if(result.hasErrors()) {
			return "faq/faq_write";
		}
		faqService.addFaqInfo(writeFaqBean);
		return "faq/faq_success";
	}
	

}
