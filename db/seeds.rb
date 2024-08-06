# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
attributes = [
  {
    name: "Light & Spacious Garden Flat London",
    address: "10 Clifton Gardens",
    zip_code: "80561",
    city: "London",
    country: "England",
    description: "A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory",
    price_per_nights: 75,
    number_of_guests: 3,
    picture_url: "https://images.unsplash.com/photo-1580126654608-4349ad1d898d"
  },
  {
    name: "Cozy Loft in Paris",
    address: "50 Rue de Rivoli",
    zip_code: "75004",
    city: "Paris",
    country: "France",
    description: "Charming loft in the heart of Paris. Close to the Seine and famous landmarks. Perfect for a romantic getaway.",
    price_per_nights: 120,
    number_of_guests: 2,
    picture_url: "https://images.unsplash.com/photo-1560448074-4db8494e624e"
  },
  {
    name: "Modern Apartment in New York",
    address: "200 Park Avenue",
    zip_code: "10166",
    city: "New York",
    country: "USA",
    description: "Experience the hustle and bustle of New York City from this modern apartment. Walking distance to Central Park and Times Square.",
    price_per_nights: 200,
    number_of_guests: 4,
    picture_url: "https://images.unsplash.com/photo-1596495577886-d920f4aaf4a6"
  },
  {
    name: "Beachfront Condo in Sydney",
    address: "300 Bondi Road",
    zip_code: "2026",
    city: "Sydney",
    country: "Australia",
    description: "Enjoy stunning ocean views from this beachfront condo. Just steps away from the iconic Bondi Beach.",
    price_per_nights: 150,
    number_of_guests: 3,
    picture_url: "https://images.unsplash.com/photo-1501594907352-04cda38ebc29"
  },
  {
    name: "Historic House in Kyoto",
    address: "15 Gion Street",
    zip_code: "605-0074",
    city: "Kyoto",
    country: "Japan",
    description: "Stay in a traditional Japanese house in the historic Gion district. Perfect for experiencing the cultural heart of Kyoto.",
    price_per_nights: 90,
    number_of_guests: 2,
    picture_url: "https://images.unsplash.com/photo-1544025162-d76694265947"
  },
  {
    name: "Luxury Villa in Cape Town",
    address: "1 Beach Road",
    zip_code: "8001",
    city: "Cape Town",
    country: "South Africa",
    description: "Luxury villa with breathtaking views of Table Mountain and the Atlantic Ocean. Features a private pool and garden.",
    price_per_nights: 250,
    number_of_guests: 6,
    picture_url: "https://images.unsplash.com/photo-1594018089077-77c7b8a1c769"
  }
]

attributes.each do |attributes|
  flat = Flat.new(attributes)
  flat.save!
end

puts "Finished!"
