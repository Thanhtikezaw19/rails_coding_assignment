require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:car_model_name) }
    it { should validate_presence_of(:car_type) }
  end

  describe 'associations' do
    it { should have_many(:reservations) }
  end
end
