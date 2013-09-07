class Event < ActiveRecord::Base
  attr_accessible :address, :body, :title, :date, :time, :time2, :time_string, :url, :location, :venue
  
  validates :title, :location, :date, presence: true
  
  extend FriendlyId
  friendly_id :date, use: :slugged

  default_scope :order => "date ASC"
  
  scope :upcoming, limit(5)

  def next
    Event.where("date > ?", date).first()
  end
  
  def prev
    Event.where("date < ?", date).order('date DESC').last
  end
  
  
end
