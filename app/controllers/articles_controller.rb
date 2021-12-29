class ArticlesController < ApplicationController
  include Paginable

  def index
    paginated = paginate(Article.recent)
    render_collection(paginated)
  end

  def show
    render json:{"id": params[:id]}
  end

  def serializer
    ArticleSerializer
  end
end