class Album < ActiveRecord::Base
  attr_accessible :date, :position, :title, :project, :photo_attributes, :tracks_attributes, :tracks, :track_attributes, :personnel, :year, :cta_url, :cta_text, :links_attributes, :is_sideman

  has_one :photo
  has_many :tracks
  
  has_many :links, :as => :linkable
  
  accepts_nested_attributes_for :links, :allow_destroy => true
  
  accepts_nested_attributes_for :photo
  accepts_nested_attributes_for :tracks
  
  default_scope order('position')
  
  
  def cta
    if self.cta_url? && self.cta_text? 
      "<h4><a target='_blank' href=#{self.cta_url}>#{self.cta_text}</a></h4>".html_safe
    end
  end
  
end
