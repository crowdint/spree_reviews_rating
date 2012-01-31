Deface::Override.new(:virtual_path => "layouts/spree_application",
                     :name => "review_sidebar",
                     :insert_bottom => "div#sidebar",
                     :partial => "shared/review_link")