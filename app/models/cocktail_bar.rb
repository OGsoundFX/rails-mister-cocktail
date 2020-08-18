class CocktailBar < ApplicationRecord
  has_one_attached :photo
  validates :name, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :city, :address ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
