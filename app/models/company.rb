class Company < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :url
  
  has_many :articles
  has_many :categories, :through => :articles
end
