class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :img, :title, :description, :category_id, :company_id, presence: true  
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :img, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'URL повинен відповідати формату GIF, JPG або PNG.'
  }
  
  private
  
    # убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Існують товарні позиції')
        return false
      end
    end
  
end
