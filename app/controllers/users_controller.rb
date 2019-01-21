class UsersController < ApplicationController
  def show
    if params[:format].present?
      @user = User.find(params[:format])
    else
      @user = User.find(params[:id])
    end

    #@user = User.find_by(id: params[:id])
    @posts = @user.posts
    @likes = Like.where(user_id: @user.id)
    #@like_posts = Post.find(Like.find(@user.likes.ids).pluck(:post_id))

    #@like_posts = Post.joins(:likes).where(likes: {user_id: 9})
    #@like_posts = Post.joins(:likes).where(likes: {id: user_session})
  end
end
