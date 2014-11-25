class Category < ActiveRecord::Base
  belongs_to :theme
  
  validates :name, length: { minimum: 10 }
  validates :theme_id, presence: true
end
