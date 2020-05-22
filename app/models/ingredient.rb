class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: { message: 'should not be empty' }, uniqueness: true
  validates :category, presence: true, inclusion: { in: ["Alcohol", "Soda", "Juice", "Veggies", "Spice", "Other"] }
end
