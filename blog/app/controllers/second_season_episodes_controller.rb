class SecondSeasonEpisodesController < ApplicationController
  def create
    @secondseason = Secondseason.find(params[:secondseason_id])
    @Second_Season_Episode = @secondseason.second_season_episodes.create(second_season_episode_params)
    redirect_to secondseason_path(@secondseason)
  end

  private
    def Second_Season_Episode_params
      params.require(:second_season_episode).permit(:commenter, :body)
    end
end
