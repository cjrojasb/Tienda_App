# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Category.create([{name: "Celulares"}, {name: "Computadores"}, {name: "Televisores"}])
 
Product.create([{name: "Ce1", price: 100, category_id: 17}, {name: "Ce2", price: 100, category_id: 17}])
Product.create([{name: "Co1", price: 200, category_id: 18}, {name: "Co2", price: 200, category_id: 18}])
Product.create([{name: "Te1", price: 300, category_id: 19}, {name: "Te2", price: 300, category_id: 19}])

Product.categories.build