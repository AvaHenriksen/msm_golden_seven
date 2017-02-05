class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render("index.html.erb")
  end

end
