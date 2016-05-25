class Post < ActiveRecord::Base

  attr_accessible :body, :excerpt, :display, :title, :photo, :photo_attributes, :published, :published_at
  has_one :photo
  accepts_nested_attributes_for :photo

  validates_presence_of :title, :body

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  scope :published, where(display: true)
  scope :recent, published.order('published_at DESC').limit(4)
  default_scope published.order('published_at DESC')

  def og_image
    self.photo.image_url
  end

  def next
    Post.published().where("published_at > ?", published_at).first()
  end

  def prev
    Post.published().where("published_at < ?", published_at).first()
  end


  # def next
  #   Event.where("date > ?", date).first()
  # end
  #
  # def prev
  #   Event.where("date < ?", date).order('date DESC').last
  # end



end
