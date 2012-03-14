module Spree
  class ReviewsAbility < ActiveRecord::Base
    include CanCan::Ability

    def initialize(user)
      can :create, Review do |review|
        user.has_role?(:user) || !Spree::Config[:require_login]
      end
      can :create, FeedbackReview do |review|
        user.has_role?(:user) || !Spree::Config[:require_login]
      end
    end
    
  end
end
