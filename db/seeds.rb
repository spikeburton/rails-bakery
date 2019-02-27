# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cake.destroy_all

spike = User.create!(name: "Spike Burton", email: "spikeburton@hotmail.com")
dana = User.create!(name: "Dana Simmons", email: "danasimmons@yahoo.com")
leigh = User.create!(name: "Leigh Baugham", email: "leighbaugham@aol.com")

wedding = Cake.create!(name: "Wedding Special", flavor: "vanilla")
carrot = Cake.create!(name: "Bugs Bunny", flavor: "carrot")
chocolate = Cake.create!(name: "Bugs Bunny", flavor: "chocolate hazelnut")

# spike.orders.create!()
