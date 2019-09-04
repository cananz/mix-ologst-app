class Cocktail < ApplicationRecord
  has_many :shakers
  has_many :ingredients, through: :shakers
  accepts_nested_attributes_for :ingredients
end
