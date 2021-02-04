# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#initialize all table
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

#create data automatically
15.times do

  doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)

  pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

  appointment = Appointment.create!(doctor: doc, patient: pat, date: Faker::Date.between(from: '2020-10-01', to: '2021-03-01')) 

  city = City.create!(city_name: Faker::Address.city)#, doctor: doc, patient: pat, appointment: appointment) (faill)

end