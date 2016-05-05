class CommentsController < ApplicationController
  def create
    @anime = Anime.find(params[:anime_id])
    @comment = @anime.comments.create(comment_params)
    redirect_to anime_path(@anime)
  end

  def destroy
    @anime = Anime.find(params[:anime_id])
    @comment = @anime.comments.find(params[:id])
    @comment.destroy
    redirect_to anime_path(@anime)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
