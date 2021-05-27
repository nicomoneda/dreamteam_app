class Dream < ApplicationRecord
  ALLOWED_CATEGORIES = ["Cauchemar", "Aventure", "Historique", "Spatial", "Voyage"]
  include PgSearch::Model
  pg_search_scope :search_by_name_description_category,
  against: [:name, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :owner,  class_name: 'User',
                      foreign_key: 'owner_id'

  has_one_attached :photo
  has_many :bookings

  validates :transpiration_level, inclusion: { in: (1..5) }
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :category, inclusion: { in: ALLOWED_CATEGORIES }
end
