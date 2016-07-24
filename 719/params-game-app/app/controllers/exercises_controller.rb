class ExercisesController < ApplicationController
  def big_name
    @big_name = params[:name].upcase
    render "big_name.html.erb"
  end

  def first_letter
    # Remember to make the action name(above) the same as the page name!
    # If they're not the same, include render "pagename.html.erb"
    @first_letter = params[:first_name]
    if @first_letter.starts_with?("a","A")
      # Instead of puts, set a new variable.
      @message = "Your name starts with A."
    else
      @message = "Your name does not start with A."
    end
    render "first_letter.html.erb"
  end

  def number_game
    render "number_game.html.erb"
  end

  def number_game_post
    @number = params[:number].to_i
    if @number == 72
      @message = "Nailed it!"
    elsif @number > 72
      @message = "Too high!"
    else
      @message = "Too low!"
    end
    render "number_game.html.erb"
  end

  def wildcard_example
    @wildcard = params[:wildcard]
    render "wildcard_example.html.erb"
  end
end
