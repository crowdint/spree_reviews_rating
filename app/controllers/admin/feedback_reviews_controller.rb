class Admin::FeedbackReviewsController <  Admin::ResourceController
  def index
    @review = Review.find(params[:review_id])
    @collection = @review.feedback_reviews
  end
end
