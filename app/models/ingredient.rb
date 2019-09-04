class Ingredient < ApplicationRecord
  has_many :shakers
  has_many :cocktails, through: :shakers
end
