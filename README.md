Reviews
=======

Straightforward review/rating facility

Please see TODO file


Installation
------------

To use the last stable release of spree_reviews, add the following to your Gemfile:

    gem 'spree_reviews'
    
If you'd rather install from git:

    gem 'spree_reviews', :git => 'git://github.com/damianogiacomello/spree_reviews.git'

Now bundle up with:

    bundle install
    
Next, run the rake task that copies the necessary migrations and assets to your project:

    rake spree_reviews:install
    
And finish with a migrate:

    rake db:migrate
    
Now you should be able to boot up your server with:

    rails s  
    
    
That's all!



Usage
-----

Action "submit" in "reviews" controller - goes to review entry form

Users must be logged in to submit a review

Three partials:
 - ./app/views/products/_rating.html.erb  -- display number of stars
 - ./app/views/products/_shortrating.html.erb -- shorter version of above
 - ./app/views/products/_review.html.erb  -- display a single review

Administrator can edit and/or approve and/or delete reviews.

