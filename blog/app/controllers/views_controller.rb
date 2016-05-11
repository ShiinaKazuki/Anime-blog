class ViewsController < ApplicationController
  def create
    @manga = Manga.find(params[:manga_id])
    @view = @manga.views.create(view_params)
    redirect_to manga_path(@manga)
  end

  def destroy
    @manga = Manga.find(params[:manga_id])
    @view = @manga.views.find(params[:id])
    @view.destroy
    redirect_to manga_path(@manga)
  end

  private
    def view_params
      params.require(:view).permit(:commenter, :body)
    end
end
