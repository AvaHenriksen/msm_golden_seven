class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render("index.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    d = Movie.new
    d.title = params[:title]
    d.year = params[:year]
    d.duration = params[:duration]
    d.description = params[:description]
    d.image_url = params[:image_url]

    d.save
    render("create_row.html.erb")
  end

  def show
    render("show.html.erb")
  end

  def destroy
    d = Movie.find(params[:id])

    d.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    d = Movie.find(params[:id])
    d.title = params[:title]
    d.year = params[:year]
    d.duration = params[:duration]
    d.description = params[:description]
    d.image_url = params[:image_url]

    render("edit_form.html.erb")
  end

  def update_row
    d = Movie.find(params[:id])
    d.title = params[:title]
    d.year = params[:year]
    d.duration = params[:duration]
    d.description = params[:description]
    d.image_url = params[:image_url]

    d.save
    redirect_to("http://localhost:3000/movies/#{params[:id]}")
  end

end
