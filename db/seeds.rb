4.times do
  Trip.create(
            name: "#{Faker::HarryPotter.location} Trip" 
            )
end

puts "Trips seeded, there are now #{Trip.count} trips in the database." 