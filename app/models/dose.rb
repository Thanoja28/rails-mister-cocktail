class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
