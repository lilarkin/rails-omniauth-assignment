namespace :populate do
  desc 'Generate 40 Trips'
  task trips: :environment do
    user = User.first
    if user
      40.times do
        user.trips.create(name: "#{Faker::Address.country} Trip")
      end
      Trip.all.each do |trip|
        3.times do
          Location.create(
                          destination: Faker::TwinPeaks.location,
                          travel_method: Location.travel_methods.sample,
                          trip_id: trip.id
                          )
        end
      end
      Location.all.each do |location|
        1.times do
          Address.create(
                         city: Faker::Address.city,
                         state: Faker::Address.state,
                         street: Faker::Address.street_address,
                         zip: Faker::Address.zip,
                         location_id: location.id
                         )
          end
        end
    else
      raise "No First User in the Database!"
    end
  end
end