# Code Analogies

## Todo:
- ### Data
  - ~~set up db~~
  - ~~create & migrate story-related model(s)~~
  - ~~instantiate story model(s) in existing views as a Rails refresher~~

- ### Testing
  - ~~set up rspec; confirm TDD working w/ Story model validation specs~~
  - write unit tests for Story model so far
  - write integration tests for routes & controllers so far

- ### Users, Sessions, Authentication
  - set up unit specs for User model, then create model per TDD
  - in User model, add `has_secure_password`
  - make sure table for User model has `password_digest: string` as as column, not `password` and `password_confirmation`
  - install bcrypt gem:
    - make sure table for User model has password_digest: string as as column, not password and password_confirmation
    - install bcrypt gem:
      - uncomment bcrypt in gem file: `gem 'bcrypt', '~> 3.1.7'`
      - `gem install bcrypt`
      - restart rails server

  - set up integration specs for User-related routes and such
  - user_controller w/ `sign_up` method for signup view or modal; `create` method for new account, `sign_in` method for view or modal (include password and password-confirm)

- ### Style
  - set up SASS w/ a framework and remove inline styles
  - establish global SCSS settings & strive for object-oriented, reusable CSS

- ### UI
  - tbd

- ### Deploy
  - Get app ready to deploy (make sure app isn’t broken!)
  - .env for security with dotenv (for deployment, later for GH OAuth, plus whatever else)
  - `heroku create [projectName]`
  - `git remote-v` to confirm on heroku remote
  - `heroku config:set key=value` for any secret configurations in .env
  - `git push heroku master`
  - `heroku run rake db:migrate`

- ### New things / experiments
  - #### Technologies:
    - haml instead of erb
    - material design instead of Foundation or Bourbon
    - charts (highcharts or d3) for most popular technologies
  - #### Features:
    - Users can build up a library of analogies they find helpful
    - Creators can link out to their repos where they used the technology.
    - text analysis of stories – which technologies require more verbosity to explain?

  - #### and more!
