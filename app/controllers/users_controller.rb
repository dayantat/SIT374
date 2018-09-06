class UsersController < ApplicationController


  def show
      @user = User.find(params[:id])
      #debugger  ### use this if something isn't working in the show section
  end
  def new
      @user = User.new
      #debugger  ### use this if something isn't working in the show section
  end

  def create
      @user = User.new(user_params)
      if @user.save
          log_in @user
          flash[:success] = "You have successfully signed up to !!!!!!!"
          redirect_to @user #this redirects to the users home page
      else
          render 'new'
      end
  end

  private

      def user_params #This is used to provide extra security to the user account
          params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end


end
