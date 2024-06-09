require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:car_type) }
  end

  describe 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:car) }
  end
end
