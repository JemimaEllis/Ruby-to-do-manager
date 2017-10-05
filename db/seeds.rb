# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = user = User.create! :email => 'peekaboo@hotmail.co.uk', :password => 'Hello1'

Task.create(task: "Brush teeth", user_id: u1.id)
Task.create(task: "Have shower", user_id: u1.id)

puts "Finished seed"