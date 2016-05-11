class PostsController < ApplicationController
  def create
    @secondseason = Secondseason.find(params[:secondseason_id])
    @post = @secondseason.posts.create(post_params)
    redirect_to secondseason_path(@secondseason)
  end

  def destroy
    @secondseason = Secondseason.find(params[:secondseason_id])
    @post = @secondseason.posts.find(params[:id])
    @post.destroy
    redirect_to secondseason_path(@secondseason)
  end

  private
    def post_params
      params.require(:post).permit(:commenter, :body)
    end
end
