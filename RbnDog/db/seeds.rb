# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

# Genérer 25 chiens
25.times do
	dog = Dog.create!(name: Faker::Cannabis.brand)
end
puts "25 chiens ont été créés."

# Genéré 25 Dogsitter
	25.times do
		dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) 
	end
puts "25 dogsitter on été créés."

# Genère 5 villes
city = City.create!(name: ["Paris", "Lyon", "Marseille", "Chicago", "Hong kong"].sample)
puts "5 villes ont été créés."

# génère 10 stroll (rdv entre chien et les amoureux des chiens
10.times do
	stroll = Stroll.create!(dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id), dog_id: rand(Dog.first.id..Dog.last.id), city_id: rand(City.first.id..City.last.id))
end

puts "10 strolls ont été créés."