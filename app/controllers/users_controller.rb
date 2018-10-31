class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

    def show
     @user = User.find(params[:id])
     @posts = @user.posts
  end

end
