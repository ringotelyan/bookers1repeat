class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new
    book.save
    redirect_to index
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:list).permit(:title, :body)
  end
end
