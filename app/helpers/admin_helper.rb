module AdminHelper
  
  def active_class(item)
    item.published ? 'published' : 'unpublished'
  end
  
end
