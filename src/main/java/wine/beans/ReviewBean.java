package wine.beans;

public class ReviewBean {
      private int review_number;
      private int rating; // 선택을 위한 필드추가
      private String review_id;
      private String review_text;
      private String review_date;
      
      public int getRating() {
         /*
         if(rating==1) {
            System.out.println("이지박스EASY BOX");
         }else if(rating==2) {
            System.out.println("정기구독서비스");
         }
         */
         return rating;
      }
      public void setRating(int rating) {
         this.rating = rating;
      }
      public int getReview_number() {
         return review_number;
      }
      public void setReview_number(int review_number) {
         this.review_number = review_number;
      }
      public String getReview_id() {
         return review_id;
      }
      public void setReview_id(String review_id) {
         this.review_id = review_id;
      }
      public String getReview_text() {
         return review_text;
      }
      public void setReview_text(String review_text) {
         this.review_text = review_text;
      }
      public String getReview_date() {
         return review_date;
      }
      public void setReview_date(String review_date) {
         this.review_date = review_date;
      }
      
      
      
      
      
}