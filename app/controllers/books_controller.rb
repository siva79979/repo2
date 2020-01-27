class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.where(:student_id => params[:id])
  end

  def edit
  end
end
