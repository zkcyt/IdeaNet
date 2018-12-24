class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def add
    @genre = Genre.new
    if request.post? then
      @genre = Genre.create(genre_params)
      redirect_to '/genres'
    end
  end

  def edit
    @genre = Genre.find params[:id]
    if request.patch? then
      @genre.update genre_params
      redirect_to '/genres'
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to genres_url, notice: 'Genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :memo)
  end
end
