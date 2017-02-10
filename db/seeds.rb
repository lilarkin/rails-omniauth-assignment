4.times do
  Trip.create(
            name: "#{Faker::HarryPotter.location} Trip"
            )
end

puts "Trips seeded, there are now #{Trip.count} trips in the database."
Trip.all.each do |trip|
  
  3.times do
      Location.create(
                  destination: Faker::StarWars.planet,
                  travel_method: Location.travel_methods.sample,
                  trip_id: trip.id
                  )
    end
  end
      