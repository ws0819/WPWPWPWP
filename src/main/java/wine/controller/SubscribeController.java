package wine.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import wine.beans.ReviewBean;
import wine.beans.UserBean;
import wine.service.ReviewService;

@RequestMapping("/subscribe")
@Controller
public class SubscribeController {
	
	   @Autowired
	   private ReviewService reviewService;
	   
		@Resource(name="loginUser")
		private UserBean loginUser;
		
	@GetMapping("/subscribe")
	public String subscribe() {
		return "subscribe/subscribe";
	}
	//UserBean에 isUserLogin이 생기면 그걸로 해서 성공하면 바로 subscribe_product로 실패하면 fail로 넘겨서 로그인으로 가게하게
	@GetMapping("/subscribe_product")
	public String subscribe_product() {
		return "subscribe/subscribe_product";
	}
	   @GetMapping("/subscribe_review")
	   public String notice_write(@ModelAttribute("reviewContentBean") ReviewBean writeReviewBean, Model model) {
		   boolean loginUserBean = loginUser.isUserLogin();
		   model.addAttribute("loginUserBean", loginUserBean);
	      return "subscribe/subscribe_review";
	   }
	  /*
	   @GetMapping("/subscribe_review")
	   public String subscribe_review(@RequestParam("review_id") String review_id, @RequestParam("review_number") int review_number, Model model ) {
	      model.addAttribute("review_number",review_number);
	      ReviewBean reviewInfo = reviewService.getReviewInfo(review_id);

	      return "subscribe/subscribe_review";
	   }
	   */
		@PostMapping("/subscribe_review_pro")
		public String notice_pro(@ModelAttribute("reviewContentBean") ReviewBean writeReviewBean, BindingResult result) {
			if (result.hasErrors()) {
				return "subscribe/subscribe_review";
			}
			String review_id = loginUser.getUser_name();
			ReviewBean a = new ReviewBean();
			a.setRating(writeReviewBean.getRating());
			a.setReview_text(writeReviewBean.getReview_text());
			a.setReview_id(review_id);
						
			reviewService.addReviewInfo(a);
			return "subscribe/subscribe_success";
		}
}