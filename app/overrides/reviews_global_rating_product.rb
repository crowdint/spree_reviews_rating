Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "reviews_global_rating",
                     :insert_bottom => "dd#global_rating",
                     :partial => "spree/shared/rating")
