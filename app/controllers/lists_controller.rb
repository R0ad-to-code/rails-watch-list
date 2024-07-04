class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    bookmarks = Bookmark.where(list_id: params[:id])
    @movies = []
    bookmarks.each do |bookmark|
      @movies.push(Movie.find(bookmark.movie_id))
    end
  end

  def new
    @list = List.new
  end

  def create
  end
end
