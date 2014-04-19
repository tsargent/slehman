class Event < ActiveRecord::Base
  attr_accessible :address, :body, :title, :date, :time, :time2, :time_string, :url, :location, :venue
  
  validates :title, :location, :date, presence: true
  
  extend FriendlyId

  friendly_id :date, use: :slugged

  
  scope :upcoming, where('date > ?', Date.today - 1).order('date ASC')
  scope :past, where('date < ?', Date.today).order('date DESC')
  scope :next_few, upcoming.limit(4)
  default_scope order('date DESC')

  def next
    Event.where("date > ?", date).first()
  end
  
  def prev
    Event.where("date < ?", date).order('date DESC').last
  end
  
  
end
