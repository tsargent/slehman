class Document < ActiveRecord::Base
  attr_accessible :pdf, :title
  mount_uploader :pdf, PdfUploader

  belongs_to :documentable, polymorphic: true
  
  before_create :default_name
  
  def default_name
    self.title ||= File.basename(pdf.filename, '.*') if pdf
  end
  
end
