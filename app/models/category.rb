class Category < ActiveRecord::Base  
  
  has_many :articles
  has_many :companies, :through => :articles
  belongs_to :theme
  
  validates :name, length: { minimum: 5 }
  validates :theme_id, presence: true
    
end
