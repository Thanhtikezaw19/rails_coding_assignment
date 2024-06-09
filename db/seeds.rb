# Clear existing data
Reservation.destroy_all
Customer.destroy_all
Car.destroy_all

# Create Cars
cars = [
  { car_model_name: 'VW T-ROC', car_type: 'standard' },
  { car_model_name: 'Porche Cayman', car_type: 'premium' },
  { car_model_name: 'Nissan Sakura', car_type: 'economy' },
  { car_model_name: 'Nissan Kicks', car_type: 'standard' },
  { car_model_name: 'Lexus LX', car_type: 'premium' },
  { car_model_name: 'Honda NSX', car_type: 'premium' },
  { car_model_name: 'Toyota Yaris', car_type: 'standard' },
  { car_model_name: 'Suzuki Wagon', car_type: 'economy' }
]

Car.create!(cars)

# Create Customers
customers = [
  { email: 'john.doe@example.com', owning_or_renting_home: 'own', number_of_family_members: 4, gender: 'male' },
  { email: 'jane.smith@example.com', owning_or_renting_home: 'rent', number_of_family_members: 2, gender: 'female' },
  { email: 'alex.jones@example.com', owning_or_renting_home: 'own', number_of_family_members: 1, gender: 'male' },
  { email: 'emma.brown@example.com', owning_or_renting_home: 'rent', number_of_family_members: 3, gender: 'female' }
]

Customer.create!(customers)

# Create Reservations
reservations = [
  { start_date: Date.today, end_date: Date.today + 1.week, car_type: 'standard', customer: Customer.first, car: Car.find_by(car_model_name: 'VW T-ROC') },
  { start_date: Date.today + 2.days, end_date: Date.today + 1.week + 2.days, car_type: 'premium', customer: Customer.second, car: Car.find_by(car_model_name: 'Porche Cayman') },
  { start_date: Date.today + 4.days, end_date: Date.today + 1.week + 4.days, car_type: 'economy', customer: Customer.third, car: Car.find_by(car_model_name: 'Nissan Sakura') },
  { start_date: Date.today, end_date: Date.today + 1.week, car_type: 'standard', customer: Customer.fourth, car: Car.find_by(car_model_name: 'Nissan Kicks') },
  { start_date: Date.today + 1.week, end_date: Date.today + 2.weeks, car_type: 'premium', customer: Customer.first, car: Car.find_by(car_model_name: 'Lexus LX') },
  { start_date: Date.today + 2.weeks, end_date: Date.today + 3.weeks, car_type: 'premium', customer: Customer.second, car: Car.find_by(car_model_name: 'Honda NSX') },
  { start_date: Date.today + 3.weeks, end_date: Date.today + 4.weeks, car_type: 'standard', customer: Customer.third, car: Car.find_by(car_model_name: 'Toyota Yaris') },
  { start_date: Date.today + 4.weeks, end_date: Date.today + 5.weeks, car_type: 'economy', customer: Customer.fourth, car: Car.find_by(car_model_name: 'Suzuki Wagon') }
]

Reservation.create!(reservations)
