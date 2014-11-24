class Theme < ActiveRecord::Base
  validates :name, length: { minimum: 10 }
  validates :name, uniqueness: true
end
