SpreeReviews
=======

Straightforward review/rating facility


Basic Installation
------------------

1. Add the following to your Gemfile
<pre>
  gem 'spree_reviews', :git => 'git://github.com/damianogiacomello/spree_reviews'
</pre>
2. Run `bundle install`
3. To copy and apply migrations run:
<pre>
	rails g spree_reviews:install
</pre>
    

Usage
-----

1. Action "submit" in "reviews" controller - goes to review entry form

2. Users must be logged in to submit a review

3. Administrator can edit and/or approve and/or delete reviews.

Copyright (c) 2012 [Damiano Giacomello], released under the New BSD License
