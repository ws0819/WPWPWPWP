package wine.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wine.beans.ReviewBean;
import wine.mapper.ReviewMapper;

@Repository
public class ReviewDAO {

	@Autowired
	private ReviewMapper reviewMapper;

	public void addReviewInfo(ReviewBean writeReviewBean) {
		// for(int i=0; i<400; i++)
		reviewMapper.addReviewInfo(writeReviewBean);
	}

	public List<ReviewBean> getReviewList() {
		return reviewMapper.getReviewList();
	}

	public ReviewBean getReviewInfo(String review_id) {
		return reviewMapper.getReviewInfo(review_id);
	}

	public void deleteReview(int review_number) {
		reviewMapper.deleteReview(review_number);
	}

}