module Spree
  module Admin
    class FeedbackReviewsController < BaseController
      
      def index
        @review = Spree::Review.find(params[:review_id])
        @collection = @review.feedback_reviews
      end
      
    end
  end
end
