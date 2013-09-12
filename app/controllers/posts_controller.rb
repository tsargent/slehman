class PostsController < ApplicationController

  def index
    
    @posts = Post.published.order('published_at DESC').page(params[:page]).per(10)
    @page_title = ' | News'
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
    @post = Post.find(params[:id])
    @page_title = ' | News | ' + @post.title
    @og_image = @post.photo ? @post.photo.image_url : nil
    @og_title = "Steve Lehman | #{@post.title}"
    @og_url = request.original_url
    @og_description = @post.excerpt

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

end
