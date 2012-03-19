module Spree
  module Admin
    class ReviewsController < ResourceController
      
      helper 'spree/reviews'
      before_filter :load_data
      
      def index
        @unapproved_reviews = Spree::Review.not_approved.find(:all, :order => "created_at DESC")
        @approved_reviews   = Spree::Review.approved.find(:all, :order => "created_at DESC")
      end

      def approve
        r = Spree::Review.find(params[:id])

        if r.update_attribute(:approved, true)
           r.product.recalculate_rating
           flash[:notice] = t("info_approve_review")
        else
           flash[:error] = t("error_approve_review")
        end
        redirect_to spree.admin_reviews_path
      end
      
      def load_data
        @reviews = Spree::Review.all
      end
    end
  end
end
