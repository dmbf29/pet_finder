require 'faker'

puts "Creating pets..."
20.times do
  Pet.create!(
    name: Faker::GreekPhilosophers.name,
    location: Faker::Space.nebula,
    species: Pet::SPECIES.sample,
    dead: [true, false].sample,
    color: Faker::Color.color_name
  )
end
puts "...Finished creating pets"
