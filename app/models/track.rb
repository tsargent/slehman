class Track < ActiveRecord::Base
  attr_accessible :title, :audio
  mount_uploader :audio, AudioUploader
  
  belongs_to :project
  belongs_to :album
  
  
  before_create :default_name
  
  def default_name
    self.title ||= File.basename(audio.filename, '.*') if audio
  end
  
end
