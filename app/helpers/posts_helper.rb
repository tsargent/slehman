module PostsHelper
  
  def next_link 
    if @post.next
      html = raw "#{@post.next.title} &#8594;"
      link_to html, post_url(@post.next), class: 'next'
    end
  end



  def prev_link 
    if @post.prev
      html = raw "&#8592; #{@post.prev.title}"
      link_to html, post_url(@post.prev)
    end
  end
  
end
