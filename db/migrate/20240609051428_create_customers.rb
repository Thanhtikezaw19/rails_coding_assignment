class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :owning_or_renting_home
      t.integer :number_of_family_members
      t.string :gender

      t.timestamps
    end
  end
end
