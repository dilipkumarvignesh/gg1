class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  def new
  	@user=User.new
  end
  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end
   def edit
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
       redirect_to @user
    else
      render 'new'
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
end
   private

   
  def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
      def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
 
   

 def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end