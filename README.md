# README

# Delicious Foods REST API with Swagger

This is a REST API web service, build on RoR with swagger-docs and swagger-ui to help developer working on REST API faster. Swagger will generate docs for your API, and Swagger-UI will generate compact REST Client to test your API.

Feel free to add your favorite foods.

## Available End Points
- GET snacks => Retrieve all available snacks on database
- POST snacks => Entry new snack to database
- GET snacks/:id => Find snack by ID
- GET snacks/findByOrigin => Find snack by origin
- PUT snacks/{snackID} => Update snack, with ID
- DELETE snacks/{snackID} => Delete snack, by ID
- PUT snacks/restore => Clear current database, and refill with original datas

### Prerequisites
```
[Ruby v.2.4.0](https://www.ruby-lang.org) - Beautiful and robust programming language
[Ruby on Rails v.5.0.2] (rubyonrails.org) - Bring happiness on your web apps development
[RubyGems](https://rubygems.org/) - Install gem for your RoR apps
[Bundler](https://bundler.io) - The best way to manages your ruby gems
```

### Installing
Clone this repo
```
git clone
```

Update your gem
```
bundle install
```

Start your server
```
rails server
```

Open your browser
```
http://localhost:port
```

### Built With
[Ruby v.2.4.0](https://www.ruby-lang.org)
[Ruby on Rails v.5.0.2](rubyonrails.org)
[Swagger-docs](swagger.io)
[Swagger-ui](swagger.io/swagger-ui)

## Author
Akbar Firdiansyah

## License
License
This project is licensed under the MIT License
