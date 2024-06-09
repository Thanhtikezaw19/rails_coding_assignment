class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :car_model_name
      t.string :car_type

      t.timestamps
    end
  end
end
