class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render("index.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    d = Actor.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    d.save
    render("create_row.html.erb")
  end

  def show
    render("show.html.erb")
  end

  def destroy
    d = Actor.find(params[:id])

    d.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    d = Actor.find(params[:id])
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    render("edit_form.html.erb")
  end

  def update_row
    d = Actor.find(params[:id])
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    d.save
    redirect_to("http://localhost:3000/actors/#{params[:id]}")
  end

end
