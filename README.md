# Makers BnB
We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

## Getting Started

1. For this repo, then clone it
1. `cd` into it
1. Run `bundle install`
1. Create new databases in Postgres: `makersbnb_test` and `makersbnb_development`
1. Run `rackup` to start the server
1. Go to [http://localhost:9292](http://localhost:9292)
1. Run `rspec` to start the test suite

## User Stories

#### Pending

```
As a signed-up user
So that I can show when the space is available
I would like to offer a range of available dates
```

```
As signed-up user
So that I can hire another user's space for a night
I would like to request to hire their space
```

```
As a signed-up user
So that I hire out my space for a night
I would like to approve another user's request to hire my space
```

```
As a signed-up user
So that two different users don't book the same space on the same night
I would like an already booked space to be unavailable
```

```
As a signed-up user
So that a space can still be booked
I would like the space to be kept available until a request is confirmed
```

#### Completed

```
As a user
So I can get show my space
I would like to list a space
```

```
As a user
So that I can list a new space
I would like to sign up
```

```
As a signed-up user
So I can get money for more than one space
I would like to list multiple spaces
```

```
As a signed-up user
So that I can refer to a particular space
I would like to name my space
```

```
As a signed-up user
So that I can differentiate between my spaces
I would like to provide a short description of my space
```

```
As a signed-up user
So that I can associate a value to my space
I would like to add a price per night to each space
```

#### Nice to have
- Make the app look bloody awesome
- Email notifications
- Text notifications
- 'Chat' between bookers and hosts
- Payment functionality (with Stripe)

## Mockups
![Mockups](docs/mockups.pdf)

Domain Modelling (table structure and spaceships) can [be found here](docs/DomainModel.md)
