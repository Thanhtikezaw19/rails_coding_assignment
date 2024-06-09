FactoryBot.define do
  factory :customer do
    email { Faker::Internet.email }
    owning_or_renting_home { %w[own rent].sample }
    number_of_family_members { rand(1..5) }
    gender { %w[male female].sample }
  end
end
