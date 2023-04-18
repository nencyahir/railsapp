class Api::V1::BookController < ApplicationController
    before_action :set_book, only: [:show, :update, :destroy]

  def index
    @books = Book.all
    render json: @books, each_serializer: Api::V1::BookSerializer, status: :ok
  end

  def show
    render json: @book, serializer: Api::V1::BookSerializer, status: :ok
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, serializer: Api::V1::BookSerializer, status: :created
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: @book, serializer: Api::V1::BookSerializer, status: :ok
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    head :no_content
  end

  def not_found
    render json: { error: 'Record not found' }, status: :not_found
  end
    
  def unauthorized
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
    
  def server_error
    render json: { error: 'Internal server error' }, status: :internal_server_error
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.permit(:name, :description ,:author_name)
    end
end
