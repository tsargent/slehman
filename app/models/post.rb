class Post < ActiveRecord::Base

  attr_accessible :body, :excerpt, :display, :title, :photo, :photo_attributes, :published
  has_one :photo
  accepts_nested_attributes_for :photo

  validates_presence_of :title, :body
  
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :published, where(display: true)
  scope :recent, published.limit(3)

  def og_image
    self.photo.image_url
  end

  def next
    Post.published().where("created_at > ?", created_at).first()
  end

  def prev
    Post.published().where("created_at < ?", created_at).order('created_at DESC').last
    
  end


  # def next
  #   Event.where("date > ?", date).first()
  # end
  # 
  # def prev
  #   Event.where("date < ?", date).order('date DESC').last
  # end



end
