# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
List.delete_all
Todo.delete_all
12.times do |i|
  Todo.create(
    photo: Faker::Fillmurray.image ,
    name: Faker::Job.title,
    description: Faker::Job.field
  )
end
