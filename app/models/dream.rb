class Dream < ApplicationRecord
  ALLOWED_CATEGORIES = ["Cauchemar", "Aventure", "Historique", "Spatial", "Voyage"]
  belongs_to :owner,  class_name: 'User',
                      foreign_key: 'owner_id'
  has_one_attached :photo

  validates :transpiration_level, inclusion: { in: (1..5) }
  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, presence: :true
  validates :price, numericality: :true
  validates :category, inclusion: { in: ALLOWED_CATEGORIES }
end
