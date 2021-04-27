# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

10.times do 
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

3.times do
    SchoolClass.create(title: Faker::Ancient.god, room_number: rand(1..5))
end