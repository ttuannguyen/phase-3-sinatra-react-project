puts "🌱 Seeding spices..."

# Seed your database here
Cuisine.destroy_all
Vendor.destroy_all


asian = Cuisine.create(name: "Asian")
latin = Cuisine.create(name: "Latin")
caribbean = Cuisine.create(name: "Caribbean")


vendor1 = Vendor.create(name: "Menya Jiro", booth_number: 10, vegan_option: true, cuisine_id: asian.id, comment: "Great toppings!")

vendor2 = Vendor.create(name: "Ay Cachapas!", booth_number: 13, vegan_option: true, cuisine_id: latin.id, comment: "Great toppings!")




puts "✅ Done seeding!"
