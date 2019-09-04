class Cocktail < ApplicationRecord
  has_many :shakers
  has_many :ingredients, through: :shakers
end
