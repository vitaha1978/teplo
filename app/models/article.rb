class Article < ActiveRecord::Base
  extend FriendlyId
  
  validates :title, length: { minimum: 10 }
  validates :content, length: { minimum: 50 }
  validates :category_id, presence: true
  validates :url, length: { minimum: 5 }
  validates :url, uniqueness: true
  validates :img, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'URL повинен відповідати формату GIF, JPG або PNG.'
  }
  
  friendly_id :url
  
  belongs_to :category
  belongs_to :company
  belongs_to :user
  
  
  
  
end
