class RecalculateRatings < ActiveRecord::Migration
  def change
    Product.reset_column_information
    Product.all.each do |p|
      Product.update_counters p.id, :reviews_count => p.reviews.length
      p.recalculate_rating
    end
  end
end
