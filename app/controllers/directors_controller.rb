class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render("index.html.erb")
  end

  def show

    render("show.html.erb")
  end

end
