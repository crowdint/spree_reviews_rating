class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :spree_reviews do |t|
      t.string  :name, :location
      t.integer :rating
      t.text :review
      t.boolean :approved, :default => false
      
      t.references :product, :user
      
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_reviews
  end
end
