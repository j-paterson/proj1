# Q0: Why is this error being thrown?

The HomeController is trying to access an attribute in the Pokemon Model that does not exist.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

In index.html.erb, there is the line:
A wild <%= @pokemon.name %> has appeared!
The embedded Ruby here is pulling the name attribute the pokemon variable being sent to the page from the home_controller def index. This variable is from a sample of the 'trainerless_pokemon,' a data set comprised of the starter pokemon generated from the seeds.rb.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

'Generates a form containing a single button that submits to the URL created by the set of options.' 
The text "Throw a Pokeball!" is the value of the input tag created by this code. The capture_path(id: @pokemon) section calls the method capture_path, passing in the @pokemon variable. "button medium" handles what classes will be assigned to the input tag. :method defines what HTTP verb will be used along with the path.

# Question 3: What would you name your own Pokemon?
Sparks

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I used 
redirect_to '/trainers/'+@trainer_id
I passed in the param of the trainer_id from the trainer's page when you click the button. Combining that and /trainers/ creates a usable path that is different from trainer to trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Flashes are name/value hash pairs. (It persists across 2 requests) This line access the error parameter of the flash and sets it equal to the pokemon errors in full messages. At the end of the application.html.erb, the messages are rendered using the alert box in _messages.html.erb.


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://github.com/j-paterson/proj1