# pizza_application
Application which can create and manage Pizzas

All photos: https://unsplash.com/

# Enviornment 
- Ruby Version used: Ruby 3.0.0p0
- IDE: VSCode
- OS: macOS Monterey Version 12.6
- Node: 18.11.0
- Sqlite3: 3.39.4
- Yarn: 1.22.1g
- Rails: 7.0.4
- PostgreSQL: 14.5

# Setup Dev Enviornment
To setup environment, please make sure items above are installed. To do this, please follow 
the Ruby on Rails guide: https://guides.rubyonrails.org/getting_started.html.  

*NOTE: instructions listed below are designed for macOS. Some commands may change if on a windows environment*

1.  Clone the pizza_application repo to desired development location
```
git clone https://github.com/tmanicki/pizza_application.git 
```  
 
2. After the repo is cloned, cd into the repo and run  
```
bundle install 
```

3. Clear the current migration and then create a migration
```
./bin/rails db:reset
./bin/rails db:migrate
```
 4. To locally deploy the project, run the following command
 ```
 ./bin/dev
 ```
 5. Go to the following address in your preferred web browser to see the application
 ```
 http://localhost:3000/
 ```
 
 # RSpec Testing
 This project uses RSpec for testing. To run it, please run the following command at the top dir of the repo:
 ```
 ./bin/rspec
 ```
