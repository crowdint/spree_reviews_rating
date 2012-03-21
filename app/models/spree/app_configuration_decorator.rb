Spree::AppConfiguration.class_eval do
  
  # include non-approved reviews in (public) listings
  preference :include_unapproved_reviews, :boolean, :default => false
  # control how many reviews are shown in summaries etc.
  preference :preview_size, :integer, :default => 3
  # show a reviewer's email address
  preference :show_email, :boolean, :default => false
  # require login to post reviews
  preference :require_login, :boolean, :default => true
  # not view form immediatly
  preference :form_show, :boolean, :default => true
  # enable disable rating sistem
  preference :enable_rating, :boolean, :default => true
  
end
