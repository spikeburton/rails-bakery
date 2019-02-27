# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cake.destroy_all
Order.destroy_all

spike = User.create!(name: "Spike Burton", email: "spikeburton@hotmail.com")
dana = User.create!(name: "Dana Simmons", email: "danasimmons@yahoo.com")
leigh = User.create!(name: "Leigh Baugham", email: "leighbaugham@aol.com")

wedding = Cake.create!(name: "Wedding Special", flavor: "vanilla")
carrot = Cake.create!(name: "Bugs Bunny", flavor: "carrot")
chocolate = Cake.create!(name: "Choco Waka", flavor: "chocolate hazelnut")

# spike.orders.create!()
Order.create!(user_id: spike.id, cake_id: carrot.id, order_date: DateTime.now, fulfilled: false)
Order.create!(user_id: spike.id, cake_id: chocolate.id, order_date: DateTime.now, fulfilled: true)
Order.create!(user_id: dana.id, cake_id: wedding.id, order_date: DateTime.now, fulfilled: false)
Order.create!(user_id: leigh.id, cake_id: wedding.id, order_date: DateTime.now, fulfilled: true)
