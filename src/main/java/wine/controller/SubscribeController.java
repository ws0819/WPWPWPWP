package wine.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wine.beans.ReviewBean;
import wine.beans.UserBean;
import wine.beans.UserInfoBean;
import wine.service.ReviewService;
import wine.service.UserService;

@RequestMapping("/subscribe")
@Controller
public class SubscribeController {
   
      @Autowired
      private ReviewService reviewService;
      
      @Autowired
      private UserService userService;
      
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
      public String notice_write(@RequestParam(value = "loginUsersubscirbe", defaultValue = "false") boolean loginUsersubscirbe, @ModelAttribute("reviewContentBean") ReviewBean writeReviewBean, Model model, BindingResult result) {
         boolean loginUserBean = loginUser.isUserLogin();
         String loginUserName = loginUser.getUser_name();
         String loginUserId = loginUser.getUser_id();
         
         List<ReviewBean> reviewList = reviewService.getReviewList();
         List<UserInfoBean> userInfo = userService.getUseruser();
         for(int i=0; i<userInfo.size(); i++) {
        	 if(userInfo.get(i).getUser_id().equals(loginUserId)) {
        		 loginUsersubscirbe = true;
        	 }
         }
         //List<UserInfoBean> userInfo2 = userService.getUseruser2(loginUserId);
         model.addAttribute("loginUsersubscirbe", loginUsersubscirbe);
         //model.addAttribute("userInfo2", userInfo2);
         model.addAttribute("reviewList", reviewList);
         model.addAttribute("loginUserBean", loginUserBean);
         model.addAttribute("loginUserName", loginUserName);
         
         return "subscribe/subscribe_review";
      }
      
      
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
      
      @GetMapping("/subscribe_delete")   
      public String subscribe_delete(@RequestParam("objNumber") int objNumber){
         reviewService.deleteReview(objNumber);

         return "/subscribe/subscribe_delete_suc";
      }
  
      
}