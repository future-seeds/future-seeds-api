# 🥑 FUTURE SEEDS API README 🍅

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Overview
The Ruby on Rails backend application that connects with a React frontend application that allows users to store data about themselves as users, their seeds, and their garden journal entries to reflect on their gardening techniques and improve their future garden.

[Backend Heroku](https://future-seeds-api.herokuapp.com/) | [Frontend Heroku](https://future-seeds-ui.herokuapp.com/) | [Frontend GitHub Repo](https://github.com/future-seeds/future-seeds-ui)

## Table of Contents
- [Technologies and Design Principles](#technologies-and-design-principles)
- [Environment Setup](#environment-setup)
- [Configuration](#configuration)
- [Visual Database Schema](#visual-database-schema)
- [Database Creation](#database-creation)
- [How to Run the Test Suite](#how-to-run-the-test-suite)
- [How to Run the Server](#how-to-run-the-server)
- [Requests](#requests)
  - [Queries](#queries)
    - [Get Users](#get-users)
    - [Get a User](#get-a-user)
    - [Get Seeds](#get-seeds)
    - [Get a Seed](#get-a-seed)
    - [Get Journal Entries](#get-journal-entries)
    - [Get a Journal Entry](#get-a-journal-entry)
  - [Mutations](#mutations)
    - [Create a User](#create-a-user)
    - [Create a Seed](#create-a-seed)
    - [Create a Journal Entry](#create-a-journal-entry)
- [Contributors](#contributors)
  - [Backend Contributors](#backend-contributors)
  - [Frontend Contributors](#frontend-contributors)

## Technologies and Design Principles
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  <img src="https://img.shields.io/badge/CircleCI-FFBC4F.svg?&style=flat&logo=travis&logoColor=white" />
  <img src="https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/GraphQl-E10098.svg?style=flaste&logo=graphql&logoColor=white" /><br>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/graphql-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/faker-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/factorybot-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /><br>
  <img src="https://img.shields.io/badge/OOP-b87818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b8b018.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-33b818.svg?&style=flaste&logo=MVC&logoColor=white" />
</p>

</p>

### Environment Setup
#### Ruby 2.7.2
- Check your Ruby version `ruby -v`
- If your version is NOT Ruby 2.7.2, you can install Ruby 2.7.2 with `rbenv install 2.7.2`
- To set the Ruby version for a specific directory and all subdirectories within it,
```
cd <repo name>
rbenv local 2.7.2
```
- Double check that your Ruby version is correct after changing it with `ruby -v`

#### Rails 5.2.6
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

## Visual Database Schema
![Schema](https://user-images.githubusercontent.com/81220681/138571470-539eac77-ba09-4377-9a08-adc3e60952b3.png)

## Database Creation
```
rails db:{create,migrate,seed}
```

## How to Run the Test Suite
```
bundle exec rspec
```

## How to Run the Server
```
rails s
```
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
## Requests
Backend API Endpoint: https://future-seeds-api.herokuapp.com/graphql

### Postman Instructions
Set the HTTP verb to `POST` and the URL to `https://future-seeds-api.herokuapp.com/graphql`. In the tabs immediately below, select `Body` and `GraphQL`. In the `QUERY` field, enter your query (see examples in following sections). Then, select `SEND`. The response will populate in the lower part of the screen.

### Queries

#### Get Users
```graphql
{
  users {
    firstName
    lastName
    city
    state
    intentions
    seeds {
      name
      plantingDepth
      timeToHarvest
      datePlanted
      expectedPlantHeight
      notes
      sunExposure
      userId
    }
    journalEntries {
      date
      description
      userId
    }
  }
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Get a User
```graphql
{
  user(id: 14) {
    firstName
    lastName
    city
    state
    intentions
    seeds {
      name
      plantingDepth
      timeToHarvest
      datePlanted
      expectedPlantHeight
      notes
      sunExposure
      userId
    }
    journalEntries {
      date
      description
      userId
    }
  }
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Get Seeds
```graphql
seeds {
  name
  plantingDepth
  timeToHarvest
  datePlanted
  expectedPlantHeight
  notes
  sunExposure
  userId
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Get a Seed
```
seed(id: 24) {
  name
  plantingDepth
  timeToHarvest
  datePlanted
  expectedPlantHeight
  notes
  userId
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Get Journal Entries
```graphql
journalEntries {
  date
  description
  userId
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Get a Journal Entry
```graphql
journalEntry(id: 24) {
  date
  description
  userId
}
```

```ruby
insert example response here
```
[Back to top](#overview)


### Mutations

#### Create a User
```graphql
mutation{
  createUser(
      firstName: "Brett"
      lastName: "Toensing"
      city: "Memphis"
      state: "TN"
      intentions: "Save the bees"
    )
    {
    firstName
    lastName
    city
    state
    intentions
    id
  }
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Create a Seed
```graphql
mutation{
  createSeed(
      userId: "8"
      name: "Willow Tree"
      plantingDepth: "12-18 in"
      daysToGerminate: "15-20 days"
      sunExposure: "Full sun"
      timeToHarvest: "N/A"
      datePlanted: "2021-10-25"
      expectedPlantHeight: "33 ft"
      notes: "I bring the shade at the river's edge."
    )
    {
    userId
    name
    plantingDepth
    daysToGerminate
    sunExposure
    timeToHarvest
    datePlanted
    expectedPlantHeight
    notes
    id
  }
}
```

```ruby
insert example response here
```
[Back to top](#overview)


#### Create a Journal Entry
```graphql
mutation{
  createJournalEntry(
      userId: "8"
      date: "2021-10-25"
      description: "We were sitting the tree next to the river. I saw a toad. The toad ate three flies then winked at me before hopping into the water."
    )
    {
    userId
    date
    description
    id
  }
}

```

```ruby
insert example response here
```
[Back to top](#overview)


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Contributors
### Backend Contributors
👩‍🌾  **Caroline Tan**
- Github: [Caroline Tan](https://github.com/carolinectan)
- LinkedIn: [Caroline Tan](https://www.linkedin.com/in/carolinectan/)

🧑‍🌾  **Brett Jones**
- Github: [Brett Jones](https://github.com/Bhjones45)
- LinkedIn: [Brett Jones](https://www.linkedin.com/in/brett-h-jones/)

### Frontend Contributors
🧑‍🌾  **Dave Leach**
- Github: [Dave Leach](https://github.com/davidleach724)
- LinkedIn: [Dave Leach](https://www.linkedin.com/in/davidleach724/)

👩‍🌾  **Hayley Dixon**
- Github: [Hayley Dixon](https://github.com/hheyhhay)
- LinkedIn: [Hayley Dixon](https://www.linkedin.com/in/hayley-dixon/)

👩‍🌾  **Samantha Brown**
- Github: [Samantha Brown](https://github.com/Samantha-Brown)
- LinkedIn: [Samantha Brown](https://www.linkedin.com/in/samantha-brown-software-developer/)

[Back to top](#overview)
