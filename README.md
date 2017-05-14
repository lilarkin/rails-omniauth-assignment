Trip Tracker is a web application that allows a user to create a list of trips and locations within those trips.  It includes user authentication with devise or login with Facebook through Omniauth.  A user can also create and send mailers.

Production Site: www.trip-tracker-mail-options.herokuapp.com

Installing

Run Commands:

bundle install
bundle exec rails db:create db:migrate db:seed
( seeding is optional )
( Start Server ):
bundle exec rails server

And you're good to go!
