class Photo < ActiveRecord::Base
  attr_accessible :caption, :image
  mount_uploader :image, ImageUploader

  belongs_to :post
  belongs_to :project
  belongs_to :album
  
  before_create :default_name
  
  def default_name
    self.title ||= File.basename(image.filename, '.*') if image
  end
  
end
