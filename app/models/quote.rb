class Quote < ActiveRecord::Base
  attr_accessible :body, :display, :position, :source, :url, :photo, :url_text, :featured
  
  has_one :photo, :as => :photoable
  accepts_nested_attributes_for :photo
  
  default_scope order: 'position'
  
  scope :published, where(display: true)
  scope :featured, published.where(featured: true)
  scope :archived, published.where(featured: false)
  
end
