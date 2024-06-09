class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :car

  validates :start_date, :end_date, :car_type, presence: true

  def self.search_two_or_more_reservations
    joins(:car).group('cars.car_model_name').having('COUNT(reservations.id) >= 2')
  end

  def self.search_no_reservations
    Car.left_outer_joins(:reservations).where(reservations: { id: nil })
  end

  def self.customers_by_cars(car_ids)
    includes(:customer).where(car_id: car_ids)
  end
end
