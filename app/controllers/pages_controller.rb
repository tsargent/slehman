class PagesController < ApplicationController

  def index
    
    @posts = Post.recent.order('published_at DESC')
    @events = Event.next_few
    
  end
  
  def contact
    @msg = "HELLO WORLD!!!!"
    @page_title = ' | Contact'
  end

  def bio
    @page_title = ' | Bio'
    bio = Page.find_by_name('bio')
    @content = bio.content
  end


  def press
    @msg = "PRESS PAGE!!!!"
    @quotes_featured = Quote.featured
    @quotes_archived = Quote.archived
    @page_title = ' | Press'
  end

  def music
    @albums = Album.all
    @page_title = ' | Music'
  end
  
end
