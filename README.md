# 🥑 FUTURE SEEDS API README 🍅

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Overview
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
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
## Queries
BE API Endpoint: https://future-seeds-api.herokuapp.com/graphql

### Postman Instructions
If you would like to use Postman, set the HTTP verb to `POST` and the URL to `https://future-seeds-api.herokuapp.com/graphql`. In the tabs immediately below, select `Body` and `GraphQL`. In the `QUERY` field, enter your query (see examples in following sections). Then, select `SEND`. The response will populate in the lower part of the screen.

### Get All Users Example Query
```
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

### Get a User Example Query
```
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

### Get All Seeds
```
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
### Get a Seed
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

### Get All Journal Entries
```
journalEntries {
  date
  description
  userId
}
```

### Get a Journal Entry
```
journalEntry(id: 24) {
  date
  description
  userId
}
```

### Create a User Mutation Example
```
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

### Create a Seed Mutation Example
** Note: Currently, it can create a seed WITHOUT setting sun exposure. The default value is "Unknown". The ability to set sun exposure is a WORK IN PROGRESS. **
```
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

### Create a Journal Entry Mutation Example
```
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

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Technologies
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/CircleCI-FFBC4F.svg?&style=flat&logo=travis&logoColor=white" />
  <img src="https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/GraphQl-E10098.svg?style=flaste&logo=graphql&logoColor=white" />
</p>

## Gems
<p>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/graphql-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> </br>
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/faker-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/factorybot-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

## Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/GRAPHQL-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

## Deployment

[BE Heroku](https://future-seeds-api.herokuapp.com/)</br>
[FE Heroku](https://future-seeds-ui.herokuapp.com/)</br>
[FE GitHub repo](https://github.com/future-seeds/future-seeds-ui)

## Visual Database Schema
![Schema](https://user-images.githubusercontent.com/81220681/138571470-539eac77-ba09-4377-9a08-adc3e60952b3.png)

## Contributors
### Backend contributors
👩‍🌾  **Caroline Tan**
- Github: [Caroline Tan](https://github.com/carolinectan)
- LinkedIn: [Caroline Tan](https://www.linkedin.com/in/carolinectan/)

🧑‍🌾  **Brett Jones**
- Github: [Brett Jones](https://github.com/Bhjones45)
- LinkedIn: [Brett Jones](https://www.linkedin.com/in/brett-h-jones/)

### Frontend contributors
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
