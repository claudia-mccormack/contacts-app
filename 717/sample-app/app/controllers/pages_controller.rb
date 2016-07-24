class PagesController < ApplicationController
  def crouching_tiger
    # It's convention to leave the method empty.
    # Rails will automatically render the file of the same name.
    # I'm leaving them in here for now so I can remember and fix things.
    render "crouching_tiger.html"
  end

  def tiger_info
    # This one is empty, but the page still totally renders.
    # But we still need the method for other stuff (?)
  end

  def contact
  end

  def time
    @sum = 1 + 2
  end
end
