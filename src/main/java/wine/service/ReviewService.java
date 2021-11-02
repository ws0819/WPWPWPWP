package wine.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wine.DAO.ReviewDAO;
import wine.beans.ReviewBean;

@Service
public class ReviewService {


   @Autowired
   private ReviewDAO reviewDAO;

   public void addReviewInfo(ReviewBean writeReviewBean) {
      reviewDAO.addReviewInfo(writeReviewBean);
   }

   public ReviewBean getReviewInfo(String review_id){
      return reviewDAO.getReviewInfo(review_id);
   }
}