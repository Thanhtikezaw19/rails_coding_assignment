FactoryBot.define do
  factory :car do
    car_model_name { Faker::Vehicle.make_and_model }
    car_type { %w[standard premium economy].sample }
  end
end
