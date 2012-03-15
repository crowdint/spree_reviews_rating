class CreateFeedbackReviews < ActiveRecord::Migration
  def self.up
    create_table :spree_feedback_reviews do |t|
      t.integer :rating,    :default => 0
      t.text    :comment
      
      t.references :spree_user, :spree_review
      
      t.timestamps
    end
    add_index :spree_feedback_reviews, :spree_review_id
    add_index :spree_feedback_reviews, :spree_user_id
  end

  def self.down
    drop_table :spree_feedback_reviews
  end
end
