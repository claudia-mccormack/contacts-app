Rails.application.routes.draw do
  get '/big_name/:name' => 'exercises#big_name'
  get '/first_letter/:first_name' => 'exercises#first_letter'

  # The get shows the blank form.
  # The post shows the post-input version of the page.
  # For clarity, see the exercises_controller
  get '/number_game/' => 'exercises#number_game'
  post '/number_game' => 'exercises#number_game_post'

  get '/wildcard_example/:wildcard' => 'exercises#wildcard_example'

  get '/my_form' => 'forms_example#my_form'
end
