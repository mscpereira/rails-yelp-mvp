puts 'destroying all restaurants...'

Restaurant.delete_all

puts 'adding new restaurants...'

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
end

puts 'seeding done!'
