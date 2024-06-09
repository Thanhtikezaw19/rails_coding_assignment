require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:owning_or_renting_home) }
    it { should validate_presence_of(:number_of_family_members) }
  end

  describe 'associations' do
    it { should have_many(:reservations) }
  end
end
