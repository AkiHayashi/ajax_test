class FavoritesController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    current_user.favorite_blogs << @blog
  end

  def destroy
    @blog = current_user.favorite_blogs.find(params[:id])
    current_user.favorite_blogs.destroy(@blog)
    # favorite = current_user.favorites.find_by(id: params[:id])
    # @blog = favorite.blog
    # favorite.destroy
  end
end
