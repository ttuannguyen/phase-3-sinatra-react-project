puts "🌱 Seeding spices..."

# Seed your database here
Cuisine.destroy_all
Vendor.destroy_all


asian = Cuisine.create(name: "Asian")
latin = Cuisine.create(name: "Latin")
caribbean = Cuisine.create(name: "Caribbean")


vendor1 = Vendor.create(name: "Menya Jiro", booth_number: 10, cuisine_id: asian.id, comment: "Great toppings!")
vendor2 = Vendor.create(name: "Ay Cachapas!", booth_number: 13, cuisine_id: latin.id, comment: "Venezuelan Cachapas.")
vendor3 = Vendor.create(name: "Caribbean Street Eats", booth_number: 55, cuisine_id: caribbean.id, comment: "Yummy sandwiches!")
vendor4 = Vendor.create(name: "Burmese Bites", booth_number: 10, cuisine_id: asian.id, comment: "Palata & noodles.")




puts "✅ Done seeding!"
