class Company < ActiveRecord::Base
  extend FriendlyId
  
  validates :name, :img, :url, :describe, presence: true
  validates :img, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
  }
  
  friendly_id :url
  
  has_many :articles
  has_many :categories, :through => :articles
end
