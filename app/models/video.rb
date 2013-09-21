class Video < ActiveRecord::Base
  attr_accessible :description, :display, :embed, :position, :title, :service, :url
  
  scope :published, where(display: true)
  
end
