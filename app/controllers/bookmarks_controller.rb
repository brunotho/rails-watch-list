class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]
  def show
  end

  def new
    # raise
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    # @list =
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = params[:list_id]
    @bookmark.save
    redirect_to list_show_path(params[:list_id])
  end

  def destroy
    @bookmark.destroy
    redirect_to list_show_path(params[:list_id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
