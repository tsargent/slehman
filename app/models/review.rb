class Review < ActiveRecord::Base
  attr_accessible :body, :display, :position, :source, :url
  
  validates_presence_of :source
  
end
