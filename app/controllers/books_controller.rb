class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new
    book.save(book_params)
    redirect_to book_path(book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.permit(:book).require(:title, :body)
  end
end
