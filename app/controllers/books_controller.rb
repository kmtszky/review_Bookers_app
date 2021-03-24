class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
