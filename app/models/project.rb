class Project < ActiveRecord::Base
  attr_accessible :description, :name, :position, :photo

  has_one :photo
  has_many :tracks

  accepts_nested_attributes_for :photo

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  default_scope order: 'position'

end
