class AnimesController < ApplicationController
  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy

    redirect_to animes_path
  end
  def update
    @anime = Anime.find(params[:id])

    if @anime.update(anime_params)
      redirect_to @anime
    else
      render 'edit'
    end
  end
  def edit
    @anime = Anime.find(params[:id])
  end
  def index
    @animes = Anime.all
  end
  def show
    @anime = Anime.find(params[:id])
  end
  def new
    @anime = Anime.new
  end
  def create
    @anime = Anime.new(anime_params)

    if @anime.save
      redirect_to @anime
    else
      render 'new'
    end
  end
  private
  def anime_params
    params.require(:anime).permit(:title, :text)
  end
end
