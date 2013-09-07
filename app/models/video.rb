class Video < ActiveRecord::Base
  attr_accessible :description, :display, :embed, :position, :title
end
