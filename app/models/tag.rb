class Tag < ActiveRecord::Base
  validates :tag_name, presence: true

  has_many :photo_tags
  has_many :photos, through: :photo_tags
end
