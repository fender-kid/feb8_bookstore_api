class AuthorsController < ApplicationController
  def index
  end

  def show
  end

  def create
    author = Author.new(name: params[:name])
    if author.save
      render json: author, status: :created
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end
end
