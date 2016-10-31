# Q0: Why is this error being thrown?
There is no Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are all in the seed file with their level randomly generated as specified in the seed file.  

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button which creates a patch request which routes to the capture method.

# Question 3: What would you name your own Pokemon?
Coffeeon
This is the most challenging question on here.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Path to damage. The path needed the Pokemon id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It puts a banner at the top that displays the error message.

# Give us feedback on the project and decal below!
Nice.

# Extra credit: Link your Heroku deployed app
