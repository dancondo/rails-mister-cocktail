class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, uniqueness: true
  validates [:ingredient, :cocktail], uniqueness: true
end
