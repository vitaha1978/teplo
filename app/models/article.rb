class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :company
  belongs_to :user
  
  validates :title, length: { minimum: 10 }
  validates :content, length: { minimum: 50 }
  validates :company_id, presence: true
  validates :category_id, presence: true
  validates :url, length: { minimum: 5 }
  validates :url, uniqueness: true
end
