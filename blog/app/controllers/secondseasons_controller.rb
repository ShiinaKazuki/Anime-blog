class SecondseasonsController < ApplicationController
  def destroy
    @secondseason = Secondseason.find(params[:id])
    @secondseason.destroy

    redirect_to secondseasons_path
  end
  def update
    @secondseason = Secondseason.find(params[:id])

    if @secondseason.update(secondseason_params)
      redirect_to @secondseason
    else
      render 'edit'
    end
  end
  def edit
    @secondseason = Secondseason.find(params[:id])
  end
  def index
    @secondseasons = Secondseason.all
  end
  def show
    @secondseason = Secondseason.find(params[:id])
  end
  def new
    @secondseason = Secondseason.new
  end
  def create
    @secondseason = Secondseason.new(secondseason_params)

    if @secondseason.save
      redirect_to @secondseason
    else
      render 'new'
    end
  end
  private
  def secondseason_params
    params.require(:secondseason).permit(:title, :text)
  end
end
