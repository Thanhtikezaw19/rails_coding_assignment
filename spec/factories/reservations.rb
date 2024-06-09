FactoryBot.define do
  factory :reservation do
    start_date { Faker::Date.forward(days: 7) }
    end_date { Faker::Date.forward(days: 14) }
    car_type { %w[standard premium economy].sample }
    customer
    car
  end
end
