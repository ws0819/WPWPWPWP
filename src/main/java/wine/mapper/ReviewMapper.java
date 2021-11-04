package wine.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import wine.beans.ReviewBean;

public interface ReviewMapper {

   @Select("select review_number,rating,review_id,review_text,review_date from subscribe_review")
   List<ReviewBean> getReviewList();
   
   @Select("select review_number,rating,review_id,review_text,review_date from subscribe_review where review_id = #{review_id}")
   ReviewBean getReviewInfo(String review_id);
   
   @Insert("insert into subscribe_review(review_number,rating,review_id,review_text,review_date) values (review_seq.nextval, #{rating}, #{review_id}, #{review_text}, sysdate)")
   void addReviewInfo(ReviewBean writeReviewBean);

   @Delete("delete from subscribe_review where review_number = #{review_number}")
   void deleteReview(int review_number);
   
}