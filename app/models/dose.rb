class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :kind, presence: { message: 'of dosage should not be empty' }
  validates :quantity, presence: { message: 'should not be empty' }
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
