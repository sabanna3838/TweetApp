class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
  before_action :ensure_correct_user, {only: [:edit, :update]}
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.jpg",
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "This account registration has been complete"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    p "==============="    
    p "id: params[:id]"
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    
    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end
    
    if @user.save
      flash[:notice] = "Profile updated"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
  
  
  
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to("/login")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "You don't have authority"
      redirect_to("/posts/index")
    end
  end
  
  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  def following
    @user = User.find_by(id: params[:id])
  end

  def followers
    @user = User.find_by(id: params[:id])
  end
end
