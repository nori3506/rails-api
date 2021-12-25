class ArticlesController < ApplicationController
  def index
    render json:{}
  end

  def show
    render json:{"id": params[:id]}
  end
end