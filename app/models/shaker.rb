class Shaker < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
end
