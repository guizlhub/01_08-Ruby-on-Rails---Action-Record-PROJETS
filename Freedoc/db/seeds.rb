# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
require "table_print"

Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Speciality.destroy_all
Appointment.destroy_all

#Génère aléatoirement 25 entrées de docteur
25.times do
	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
end
puts "25 docteurs sont créés."

#Génère aléatoirement 25 entrées de patient
25.times do
	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts "25 patient sont créés."

#Génère aléatoirement 5 entrées de city
5.times do
	city = City.create!(name: Faker::Address.city)
end
puts "5 villes sont créés."

#Génère aléatoirement 4 spécialité
speciality = Speciality.create!(name: ["Generaliste", "Dentiste", "Proctologue", "Pediatrie"].sample)
	
puts "3 specialité sont créés."

# Génère 25 RDV aléatoirement
25.times do
	appointment = Appointment.create!(date: Faker::Date.forward(days: 2), doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id), city_id: rand(City.first.id..City.last.id))
end
puts "25 RDV sont créés."