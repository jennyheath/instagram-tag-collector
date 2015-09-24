class Photo < ActiveRecord::Base
  validates :url, :tag_time, presence: true

  has_many :photo_tags
  has_many :tags, through: :photo_tags
end
