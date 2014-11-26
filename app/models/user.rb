class User < ActiveRecord::Base
  
  has_many :articles
  
  validates :name, length: { minimum: 4 }
  validates :name, uniqueness: true
end
