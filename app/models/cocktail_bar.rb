class CocktailBar < ApplicationRecord
  has_one_attached :photo
  validates :name, :address, presence: :true
end
