class UsersController < ApplicationController
  def index
    @users = User.all
    render json:@users
  end

  def show
    @user = User.find(params[:id])

    render json:@user
  end

  def create
    @user = User.create(email:params[:email], username:params[:username],password:params[:password])
    if @user.valid? ## Authenticate is a part of has_secure_password
      token = issue_token({jwt: @user.id})
        render json: {jwt: token, user:@user}
      else
          render json: {error: "Username is taken" }, status: 401
      end
  end




  private
  def user_params
    params.require(:user).permit(:username,:password,:email)
  end

end
