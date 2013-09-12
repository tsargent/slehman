class Post < ActiveRecord::Base

  attr_accessible :body, :excerpt, :display, :title, :photo, :photo_attributes, :published
  has_one :photo
  accepts_nested_attributes_for :photo

  validates_presence_of :title, :body
  
  extend FriendlyId
  friendly_id :title, use: :slugged

  default_scope :order => "created_at DESC"
  scope :published, where(display: true)
  scope :recent, published.limit(3)

  def og_image
    self.photo.image_url
  end

  def next
    Post.published().where("id > ?", id).order("id ASC").last
  end
  
  def prev
    Post.published().where("id < ?", id).order("id DESC").first()
  end

end
