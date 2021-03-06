class ArticlesController < ApplicationController

  def index
    @articles = Article.published.page(params[:page]).per(10)
    @page_title = ' | Scholarship'

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

end
