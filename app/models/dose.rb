class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "You can only have one dose of one ingredient" }
end
