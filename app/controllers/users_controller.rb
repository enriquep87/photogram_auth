class UsersController < ApplicationController
  def index
    @user = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photo = Photo.where(:user_id => @user.id)


    render("users/show.html.erb")
  end

  def new
    @user = User.new

    render("users/new.html.erb")
  end

end
