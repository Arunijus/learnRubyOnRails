# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s1 = Supplier.create(name: "SPC", address: "Kaunas")
s2 = Supplier.create(name: "Rautakesko", address: "Latvia")

si1 = SupplierItem.create(ean: "1234567890123", description: "Very nice supplier item")
si2 = SupplierItem.create(ean: "1234567890124", description: "Not nice supplier item")
