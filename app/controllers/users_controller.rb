class UsersController < ApplicationController
  def show
    if params[:format].present?
      @user = User.find(params[:format])
    else
      @user = User.find(params[:id])
    end

    @posts = @user.posts
    @like_posts = Post.find(Like.find(@user.likes.ids).pluck(:post_id))
  end
end
