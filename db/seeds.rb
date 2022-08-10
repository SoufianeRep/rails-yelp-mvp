puts "cleaning the resrants DB ..."
# Restaurant.destroy_all

puts "Adding new entries to the restaurant table"
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::CATEGORY.sample
  )
end

puts "Finished Seeding"
