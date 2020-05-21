class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :comment, presence: true
  validates :kind, presence: true
  validates :quantity, presence: true
  validates :quantity, inclusion: { in: 1..10 }
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
