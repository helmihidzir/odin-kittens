# README

[Project 1: Building a simple kittens API](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis?ref=lnav)

## Run this project locally

1. Clone this repository to your local machine.

```bash
git clone git@github.com:helmihidzir/odin-kittens.git
```

2. Change into the `pin_board` directory.

```bash
cd odin-kittens
```

3. Install the project dependencies using bundler.

```bash
gem install bundler
bundle install
```

4. Create the database.

```bash
rails db:create
```

5. Run the database migrations.

```bash
rails db:migrate
```

6. Start the Rails server.

```bash
rails s
```

7. Lastly, navigate to <http://localhost:3000/> to play around with the project.


## Test the API

1. Install rest-client gem and go to the irb: 
```ruby
require 'rest-client'
```

2. To GET all kittens:
```ruby
response = RestClient.get("http://localhost:3000/kittens")
```

3. To POST or create new kitten:
```ruby
response = RestClient.post('http://localhost:3000/kittens', kitten: {name: 'neko', age: 12, cuteness: 5, softness: 5})
```