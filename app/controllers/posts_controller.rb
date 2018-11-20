class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  #GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @user = User.find_by(id: @post.user_id)
  end

  # GET /posts/new
  def new
    @post = Post.new
    #@post = @post.user
    #redirect_to '/posts'
  end

  # GET /posts/1/edit
  def edit
    #redirect_to '/posts'
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      #make_picture
      redirect_to @post, notice: '投稿しました。投稿ありがとうございます。'
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    #redirect_to '/board_messages'
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    #redirect_to '/board_messages'
    @post.destroy
    #redirect_to posts_path
    #@post.user_id = current_user.id
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
    #redirect_to("/posts")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :summary, :content, :user_id)
    end

    def correct_user
      #@post = Post.find_by(id: params[:id])
      if current_user.id != @post.user_id
      #@user = User.find(Post.find(params[:id]).user_id)
      #@current_user = current_user
        redirect_to posts_path, notice: '他のユーザーの投稿は編集できません。'
      end
    end
end
