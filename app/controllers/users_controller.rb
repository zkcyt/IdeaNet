class UsersController < ApplicationController

  def show
     @data = User.find(params[:id])
     @posts = @user.posts
  end

end
