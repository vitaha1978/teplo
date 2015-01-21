class Product < ActiveRecord::Base
  validates :img, :title, :description, :category_id, :company_id, presence: true  
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :img, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
  }
end
