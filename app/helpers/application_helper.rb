module ApplicationHelper
  
  def active_path(path)
    # "active" if current_page?(path)
    "active" if request.url.include?(path)
  end
  
  
  def format_date(date)
    # date.to_formatted_s(:long)
    date.strftime("%b %e, %Y")
  end
  
  def format_date_sidebar(date)
    # date.to_formatted_s(:long)
    date.strftime("%b %e")
  end
  
  
  def format_time(time)
    time.to_time.strftime("%l:%M %p")  
  end
  
  def og_image
    if @og_image 
      URI.join(root_url, image_path(@og_image))
    else
      URI.join(root_url, image_path('steve_lehman.jpg'))
    end
  end

  def og_title
    if @og_title 
      @og_title
    else
      'Steve Lehman'
    end
  end

  def og_url
    if @og_url 
      @og_url
    else
      request.original_url
    end
  end
  
  def og_description
    if @og_description 
       @og_description
     else
       'Alto saxophonist and composer Steve Lehman'
     end
  end


  def og_generate(url, image)
    # image.nil? ? 'empty!!!' : 'present!!!'
    # raw "<meta property=og:image content=#{url}/><meta property=og:image content=#{image}/>"
  end

  def bio_intro(content)
    out = content.split("\n", 2)[0]
    out
  end
  
  def bio_body(content)
    out = content.split("\n", 2)[1]
    simple_format(out)
  end
  
end
