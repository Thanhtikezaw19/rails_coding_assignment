class Customer < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :owning_or_renting_home, presence: true
  validates :number_of_family_members, presence: true

  scope :by_gender, ->(gender) { where(gender: gender) if gender.present? }
  scope :by_family_members, ->(number_of_family_members) { where(number_of_family_members: number_of_family_members) if number_of_family_members.present? }
  scope :by_home_status, ->(home_status) { where(owning_or_renting_home: home_status) if home_status.present? }

  def self.search(params)
    customers = Customer.all
    customers = customers.by_gender(params[:gender])
    customers = customers.by_family_members(params[:number_of_family_members])
    customers = customers.by_home_status(params[:owning_or_renting_home])
    customers
  end
end
