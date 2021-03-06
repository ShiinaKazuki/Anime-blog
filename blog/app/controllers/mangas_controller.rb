class MangasController < ApplicationController
  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy

    redirect_to mangas_path
  end
  def update
    @manga = Manga.find(params[:id])

    if @manga.update(manga_params)
      redirect_to @manga
    else
      render 'edit'
    end
  end
  def edit
    @manga = Manga.find(params[:id])
  end
  def index
    @mangas = Manga.all
  end
  def show
    @manga = Manga.find(params[:id])
  end
  def new
    @manga = Manga.new
  end
  def create
    @manga = Manga.new(manga_params)

    if @manga.save
      redirect_to @manga
    else
      render 'new'
    end
  end
  private
  def manga_params
    params.require(:manga).permit(:title, :text)
  end
end
