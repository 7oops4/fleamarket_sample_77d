class Category < ApplicationRecord
  has_many :products
  
  validates :text,     presence: true

  has_ancestry
end
