class VideosController < ApplicationController

  def index
    @videos = Video.published
    @videos = Video.published.order('position').page(params[:page]).per(10)
    
    @page_title = ' | Videos'
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end


  def show
    @video = Video.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

end
