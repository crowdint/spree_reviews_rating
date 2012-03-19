module Spree
  class ReviewsController < BaseController
    helper Spree::BaseHelper

    before_filter :load_product, :only => [:index, :new, :create]
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def index
      @approved_reviews = Spree::Review.approved.find_all_by_product_id(@product.id)
    end

    def all_list
      @approved_reviews = Spree::Review.approved.order("created_at DESC")
      respond_to do |f|
        f.html
      end
    end

    def new
      @review = Spree::Review.new(:product => @product)
      authorize! :new, @review
      render :layout => false
    end

    # save if all ok
    def create
      #params[:review][:rating].sub!(/\s*stars/,'') unless params[:review][:rating].blank?

      @review = Spree::Review.new(params[:review])
      @review.product = @product
      @review.user = current_user if user_signed_in?
      @review.location = request.remote_ip

      authorize! :create, @review

      if @review.save
        flash[:notice] = t('review_successfully_submitted')
        respond_to do |format|
          format.js { render "success" }
        end
      else
        respond_to do |format|
          format.js { render "error" }
        end
      end
    end

    def terms
    end

    private
    def load_product
      @product = Spree::Product.find_by_permalink!(params[:product_id])
    end
  end
end
