# FUTURE SEEDS API README
The Ruby on Rails backend application that connects with a React frontend application that allows users to store data about themselves as users, their seeds, and their garden journal entries to reflect on their gardening techniques and improve their future garden.

## Version
- Ruby 2.7.2
- Rails 5.2.6

## System dependencies
### Ruby 2.7.2
- Check your Ruby version `ruby -v`
- If your version is NOT Ruby 2.7.2, you can install Ruby 2.7.2 with `rbenv install 2.7.2`
- To set the Ruby version for a specific directory and all subdirectories within it,
```
cd <repo name>
rbenv local 2.7.2
```
- Double check that your Ruby version is correct after changing it with `ruby -v`

### Rails 5.2.6
- [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) is a Gem, and if you are using rbenv, gems are specific to your current Ruby version, so you need to make sure you are on Ruby 2.7.2 before proceeding by following the instructions above.
- Check your Rails version `rails -v`
- If you get a message saying rails is not installed or you do not have version 5.2.5, run `gem install rails --version 5.2.5`.
- Double check that your Ruby version is correct after changing it with `rails -v`

## Configuration
```
git clone git@github.com:future-seeds/future-seeds-api.git
cd <repo name>
bundle
```

## Database creation
```
rails db:{create,migrate,seed}
```

## How to run the test suite
```
bundle exec rspec
```

## How to run server
```
rails s
```

## Technologies
- Rails
- Ruby
- GraphQL
- Shoula-matchers
- Circle CI (TBD)
- Heroku (TBD)
- ...

## Deployment instructions
(TBD)

## Visual Database Schema
![Schema](https://user-images.githubusercontent.com/81220681/137773360-8031d4ac-a1e0-413b-9e91-dbb4803d424e.png)
