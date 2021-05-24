class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream

  validates :date, presence: :true
end
