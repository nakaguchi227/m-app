class UsersController < ApplicationController

  before_action :forbid_login_user, {only: [:new, :create, :login_form]}
  def new
    @user=User.new
  end


  def index
    @users = User.all
    @current_user = User.find_by(id: session[:user_id])
  end

  def create
    @user = User.new(
      name: params[:name],
      password: params[:password],
    )
    if @user.save
        session[:user_id] = @user.id
      flash[:notice] = "登録しました"
      redirect_to("/")
    else
      render("/users/new")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(
      name: params[:name],
      password: params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      @error_message = "ユーザー名またはパスワードが間違っています"
      render("users/login_form")
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

end
