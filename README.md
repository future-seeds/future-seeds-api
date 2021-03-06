# 🥑 FUTURE SEEDS API README 🍅

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

The Ruby on Rails backend application that connects with a React frontend application that allows users to store data about themselves as users, their seeds, and their garden journal entries to reflect on their gardening techniques and improve their future garden.

[Backend Heroku](https://future-seeds-api.herokuapp.com/) | [Frontend Heroku](https://future-seeds-ui.herokuapp.com/) | [Frontend GitHub Repo](https://github.com/future-seeds/future-seeds-ui)

## Table of Contents
- [Illustrations](illustrations)
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

## Illustrations

<img src='https://github.com/future-seeds/future-seeds-ui/blob/main/recording%20(6).gif' alt="Future Seeds gif" title="Future Seeds gif" width="500"/>

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

### Postman Instructions
In Postman, set the HTTP verb to `POST` and the `URL` to the backend API endpoint `https://future-seeds-api.herokuapp.com/graphql`. In the tabs immediately below, select `Body` and `GraphQL`. In the `QUERY` field, enter your query (see examples in following sections). Then, select `SEND`. The response will populate in the lower part of the screen.

### Running Locally
Run the server in your command line with `rails server` or `rails s`. In Postman, set the HTTP verb to `POST` and the `URL` to the backend API endpoint `http://localhost:3000/graphql`. In the tabs immediately below, select `Body` and `GraphQL`. In the `QUERY` field, enter your query (see examples in following sections). Then, select `SEND`. The response will populate in the lower part of the screen.


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
      daysToGerminate
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

```json
{
    "data": {
        "users": [
            {
                "firstName": "Jacqualine",
                "lastName": "Torp",
                "city": "Sawaynview",
                "state": "WV",
                "intentions": "ruff",
                "seeds": [
                    {
                        "name": "Fresh Chillies",
                        "plantingDepth": "1/8 in",
                        "timeToHarvest": "47-62 days",
                        "datePlanted": "2021-02-06",
                        "expectedPlantHeight": "10-27 in",
                        "daysToGerminate": "3-12 days",
                        "notes": "We could all have been killed - or worse, expelled.",
                        "sunExposure": "Unknown",
                        "userId": "1"
                    },
                    {
                        "name": "Cos lettuce",
                        "plantingDepth": "1/8 in",
                        "timeToHarvest": "30-69 days",
                        "datePlanted": "2021-10-24",
                        "expectedPlantHeight": "8-33 in",
                        "daysToGerminate": "7-14 days",
                        "notes": "It is our choices, Harry, that show what we truly are, far more than our abilities.",
                        "sunExposure": "Full shade",
                        "userId": "1"
                    }
                ],
                "journalEntries": [
                    {
                        "date": "2021-08-18",
                        "description": "Do. Or do not. There is no try.",
                        "userId": "1"
                    },
                    {
                        "date": "2021-06-17",
                        "description": "Younglings, younglings gather ’round.",
                        "userId": "1"
                    }
                ]
            },
            ...
        ]
    }
}
```
[Back to top](#overview)


#### Get a User
```graphql
{
  user(id: 1) {
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
      daysToGerminate
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

```json
{
    "data": {
        "user": {
            "firstName": "Jacqualine",
            "lastName": "Torp",
            "city": "Sawaynview",
            "state": "WV",
            "intentions": "ruff",
            "seeds": [
                {
                    "name": "Fresh Chillies",
                    "plantingDepth": "1/8 in",
                    "timeToHarvest": "47-62 days",
                    "datePlanted": "2021-02-06",
                    "expectedPlantHeight": "10-27 in",
                    "daysToGerminate": "3-12 days",
                    "notes": "We could all have been killed - or worse, expelled.",
                    "sunExposure": "Unknown",
                    "userId": "1"
                },
                {
                    "name": "Cos lettuce",
                    "plantingDepth": "1/8 in",
                    "timeToHarvest": "30-69 days",
                    "datePlanted": "2021-10-24",
                    "expectedPlantHeight": "8-33 in",
                    "daysToGerminate": "7-14 days",
                    "notes": "It is our choices, Harry, that show what we truly are, far more than our abilities.",
                    "sunExposure": "Full shade",
                    "userId": "1"
                }
            ],
            "journalEntries": [
                {
                    "date": "2021-08-18",
                    "description": "Do. Or do not. There is no try.",
                    "userId": "1"
                },
                {
                    "date": "2021-06-17",
                    "description": "Younglings, younglings gather ’round.",
                    "userId": "1"
                }
            ]
        }
    }
}
```
[Back to top](#overview)


#### Get Seeds
```graphql
{
  seeds {
    id
    name
    plantingDepth
    timeToHarvest
    datePlanted
    expectedPlantHeight
    daysToGerminate
    notes
    sunExposure
    userId
    }
}
```

```json
{
    "data": {
        "seeds": [
            {
                "id": "1",
                "name": "Fresh Chillies",
                "plantingDepth": "1/8 in",
                "timeToHarvest": "47-62 days",
                "datePlanted": "2021-02-06",
                "expectedPlantHeight": "10-27 in",
                "daysToGerminate": "3-12 days",
                "notes": "We could all have been killed - or worse, expelled.",
                "sunExposure": "Unknown",
                "userId": "1"
            },
            {
                "id": "2",
                "name": "Cos lettuce",
                "plantingDepth": "1/8 in",
                "timeToHarvest": "30-69 days",
                "datePlanted": "2021-10-24",
                "expectedPlantHeight": "8-33 in",
                "daysToGerminate": "7-14 days",
                "notes": "It is our choices, Harry, that show what we truly are, far more than our abilities.",
                "sunExposure": "Full shade",
                "userId": "1"
            },
            {
                "id": "3",
                "name": "Green Pepper",
                "plantingDepth": "1/3 in",
                "timeToHarvest": "35-61 days",
                "datePlanted": "2021-12-05",
                "expectedPlantHeight": "1-33 in",
                "daysToGerminate": "10-14 days",
                "notes": "Never trust anything that can think for itself if you can't see where it keeps its brain.",
                "sunExposure": "Full shade",
                "userId": "2"
            },
            ...
        ]
    }
}
```
[Back to top](#overview)


#### Get a Seed
```
{
  seed(id: 1) {
    id
    name
    plantingDepth
    timeToHarvest
    datePlanted
    expectedPlantHeight
    notes
    userId
  }
}
```

```json
{
    "data": {
        "seed": {
            "id": "1",
            "name": "Fresh Chillies",
            "plantingDepth": "1/8 in",
            "timeToHarvest": "47-62 days",
            "datePlanted": "2021-02-06",
            "expectedPlantHeight": "10-27 in",
            "notes": "We could all have been killed - or worse, expelled.",
            "userId": "1"
        }
    }
}
```
[Back to top](#overview)


#### Get Journal Entries
```graphql
{
  journalEntries {
    id
    date
    description
    userId
    }
}
```

```json
{
    "data": {
        "journalEntries": [
            {
                "id": "1",
                "date": "2021-08-18",
                "description": "Do. Or do not. There is no try.",
                "userId": "1"
            },
            {
                "id": "2",
                "date": "2021-06-17",
                "description": "Younglings, younglings gather ’round.",
                "userId": "1"
            },
            {
                "id": "3",
                "date": "2021-08-24",
                "description": "Much to learn you still have my old padawan. ... This is just the beginning!",
                "userId": "1"
            },
            {
                "id": "4",
                "date": "2021-11-18",
                "description": "At an end your rule is, and not short enough it was!",
                "userId": "2"
            }
            ...
        ]
    }
} 
```
[Back to top](#overview)


#### Get a Journal Entry
```graphql
{
  journalEntry(id: 1) {
    id
    date
    description
    userId
    }
}
```

```json
{
    "data": {
        "journalEntry": {
            "id": "1",
            "date": "2021-08-18",
            "description": "Do. Or do not. There is no try.",
            "userId": "1"
        }
    }
}
```
[Back to top](#overview)


### Mutations

#### Create a User
```graphql
mutation{
  createUser(
      firstName: "Jane"
      lastName: "Johnson"
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

```json
{
    "data": {
        "createUser": {
            "firstName": "Jane",
            "lastName": "Johnson",
            "city": "Memphis",
            "state": "TN",
            "intentions": "Save the bees",
            "id": "261"
        }
    }
}
```
[Back to top](#overview)


#### Create a Seed
```graphql
mutation{
  createSeed(
      userId: "261"
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

```json
{
    "data": {
        "createSeed": {
            "userId": "261",
            "name": "Willow Tree",
            "plantingDepth": "12-18 in",
            "daysToGerminate": "15-20 days",
            "sunExposure": "Full sun",
            "timeToHarvest": "N/A",
            "datePlanted": "2021-10-25",
            "expectedPlantHeight": "33 ft",
            "notes": "I bring the shade at the river's edge.",
            "id": "211"
        }
    }
}
```
[Back to top](#overview)


#### Create a Journal Entry
```graphql
mutation{
  createJournalEntry(
      userId: "261"
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

```json
{
    "data": {
        "createJournalEntry": {
            "userId": "261",
            "date": "2021-10-25",
            "description": "We were sitting the tree next to the river. I saw a toad. The toad ate three flies then winked at me before hopping into the water.",
            "id": "27"
        }
    }
}
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
