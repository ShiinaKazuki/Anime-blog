class EpisodesController < ApplicationController
  def create
    @anime = Anime.find(params[:anime_id])
    @episode = @anime.episodes.create(episode_params)
    redirect_to anime_path(@anime)
  end

  def destroy
    @anime = Anime.find(params[:anime_id])
    @episode = @anime.episodes.find(params[:id])
    @episode.destroy
    redirect_to anime_path(@anime)
  end

  private
    def episode_params
      params.require(:episode).permit(:commenter, :body)
    end
end
