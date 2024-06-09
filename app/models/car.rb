class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :car_model_name, presence: true
  validates :car_type, presence: true
end
