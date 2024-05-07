puts 'Cleaning the DB...'
Pet.destroy_all

puts "Creating pets..."
20.times do
  Pet.create!(
    name: Faker::Creature::Dog.unique.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10)
  )
end
puts ".. created #{Pet.count } pets."
