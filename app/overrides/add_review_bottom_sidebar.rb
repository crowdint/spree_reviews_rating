Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "review_sidebar",
                     :insert_bottom => "div#sidebar",
                     :partial => "shared/review_link")