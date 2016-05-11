class ChaptersController < ApplicationController
  def create
    @manga = Manga.find(params[:manga_id])
    @chapter = @manga.chapters.create(chapter_params)
    redirect_to manga_path(@manga)
  end

  def destroy
    @manga = Manga.find(params[:manga_id])
    @chapter = @manga.chapters.find(params[:id])
    @chapter.destroy
    redirect_to manga_path(@manga)
  end

  private
    def chapter_params
      params.require(:chapter).permit(:commenter, :body)
    end
end
