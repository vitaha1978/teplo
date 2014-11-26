class Category < ActiveRecord::Base
  belongs_to :theme
  has_many :articles
  has_many :companies, :through => :articles
  
  validates :name, length: { minimum: 10 }
  validates :theme_id, presence: true
end
