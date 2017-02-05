class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render("index.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    d = Director.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    d.save
    render("create_row.html.erb")
  end

  def edit_form
    d = Director.find(params[:id])
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    render("edit_form.html.erb")
  end

  def show
    render("show.html.erb")
  end

  def destroy
    d = Director.find(params[:id])

    d.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def update_row
    d = Director.find(params[:id])
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]

    d.save
    redirect_to("http://localhost:3000/directors/#{params[:id]}")
end

end
