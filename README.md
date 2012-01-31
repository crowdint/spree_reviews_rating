Reviews
=======

Straightforward review/rating facility


Installation
------------
1. Add the following to your Gemfile
<pre>
  gem 'spree_reviews', :git => 'git://github.com/damianogiacomello/spree_reviews'
</pre>
2. Run `bundle install`
3. To copy and apply migrations run:
<pre>
	rake spree_reviews:install:migrations
</pre>
    
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

