class Link < ActiveRecord::Base
  attr_accessible :url, :service, :name
  belongs_to :linkable, polymorphic: true
  
  before_save :set_name
  
  def set_name
    self.name = 'link'
  end

end
