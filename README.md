# Animal Shelter - Independent Project
#### Building an API for Epicodus, 1/31/20
#### By Celeste Renee Morton
## Description:
The concept for this project is to build a custom API for a client that would like to display animals in need of foster homes. The goal is to have multiple search features for users and the best custom endpoint. 

## User Stories:
* Endpoints for GET (all and by id), POST, PUT and DELETE.
* A RANDOM endpoint that randomly returns an animal.
* A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific animal names).
* Model scopes to process parameters from API calls.

## Specifications:
|Spec|API Call|
|-|-|
|GET a list of all animals in the shelter|/animals/|
|GET a list of all animals by name|/animals/?name=Meika|
|GET a list of all animals by ID|/animals/:id/|
|GET a random animal upon request|/animals/?random_creature|
|GET a list of animals by gender|/animals/?gender=female|
|GET a list of animals by their favorite food|/animals/?fav_food=carrots|
|POST a new animal along with their info|/animals/name=Fay|
|PUT an existing animal to update their current info|/animals/:id/?name=Meika|
|DELETE an existing animal|/animals/:id/|


## Setup/Installation Requirements
* Install Ruby 2.6.5 on your machine
* Install SQL 12.1 with Postgres on your machine
* Clone the git repository at https://github.com/Celesterenee7/shelter-app
* Navigate to folder and run `bundle install` from terminal
* In the terminal navigate to the folder and run `rake db:create` to create the database
* Next run `rake db:migrate` to get the tables created
* Then type in `rake db:seed` within the terminal to generate a series of values for products and reviews
* Lastly type in `rails s` to start the server and navigate to localhost:3000/animals on your browser to make API calls

## Support and contact details
Please contact me directly with any questions or concerns. You can reach me at 541-555-5555
## Technologies Used
_This program utilized:_
* _RUBY_
* _RAILS_
* _PSQL_
* _Postman_
* _and was built in Visiual Studio Code_
### Copyright (c) 2020 Celeste Renee Morton
This software is installed under MIT license.
