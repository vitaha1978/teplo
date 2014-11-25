class Theme < ActiveRecord::Base
  has_many :categories
  
  validates :name, length: { minimum: 10 }
  validates :name, uniqueness: true
end
