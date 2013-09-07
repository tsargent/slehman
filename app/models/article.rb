class Article < ActiveRecord::Base
  attr_accessible :title, :description, :display, :position, :document, :external_url, :document, :document_attributes

  has_one :document, :as => :documentable
  accepts_nested_attributes_for :document
  
  default_scope :order => "created_at DESC"
  scope :published, where(display: true)
  
  def cta
    self.external_url? ? self.external_url : self.document.pdf_url
  end
  
  def has_cta?
    self.external_url? || self.document
  end
  
end
