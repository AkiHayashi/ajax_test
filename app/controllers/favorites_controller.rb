class FavoritesController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_path
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id])
    @blog = favorite.blog
    favorite.destroy
    redirect_to blogs_path
  end
end
