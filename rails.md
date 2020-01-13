# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: 
  Model = contains the structural base code before it is told what to do.
  view = what the user sees
  controller = contains all the methods and tells the model what to do.

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __route_______ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ___controller_________ in the file ____app/controllers/statics_controllers.rb _________
  ```
  class ____StaticsController________ < ApplicationController
    def ____index_______
      render _json: index?_______________
    end
  end
  ```

  Step 3: Create the View in the file _app/views/index.html.erb_____________
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
selects everything

/users/1      method="GET"     # :controller => 'users', :action => 'show'
displays id:1

/users/new    method="GET"     # :controller => 'users', :action => 'new'
returns a form

/users/       method="POST"    # :controller => 'users', :action => 'create'
Creates a new user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
returns a form to edit id:1

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
updates a user


/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
deletes a user



3b. Which of the above routes must always be passed params and why?
show, update, destroy.


4. What is the public folder used for in Rails?

  Your answer: html and css.
   the public folder is used to serve static files

  



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get '/main/:guess' => 'main#game'



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: it tells where the formdata should be sent to the server after submission of the form.

7. Name two rails generator commands and what files they create:

  Your answer:
  rails g controller: generates a controller
  rails g model: generates a model



8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. I learned that The articles_path helper tells Rails to point the form to the URI Pattern associated with the prefix.

2. I learned tp> cd emails
emails> rails generate mailer Usermailer
creates a mailer


3. I learned that self.up is used when migrating to a new version and self.down is used to roll back changes.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:  a cookie is a packet of data that a computer receives and then sends back without messing with it. websites send cookies to your computer and Your computer stores it. where sessions are kind of like cookies but stored on the server.

