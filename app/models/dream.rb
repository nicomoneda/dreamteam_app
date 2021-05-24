class Dream < ApplicationRecord
  belongs_to :owner,  class_name: 'User', 
                      foreign_key: 'owner_id'

  validates :transpiration_level, inclusion: { in: [1..10] }
  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, presence: :true
  validates :price, numericality: :true
end
