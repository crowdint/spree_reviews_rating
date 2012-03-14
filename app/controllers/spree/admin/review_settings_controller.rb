module Spree
  module Admin
    class ReviewSettingsController < BaseController
      
      def show
        @preferences = ['preview_size']
      end

      def edit
        @preferences = [:include_unapproved_reviews, :feedback_rating, :show_email,
                        :require_login, :form_show, :preview_size]
      end
      
      def update
        params.each do |name, value|
          next unless Spree::Config.has_preference? name
          Spree::Config[name] = value
        end
        
        redirect_to admin_review_settings_path
      end
    
    end
  end
end
