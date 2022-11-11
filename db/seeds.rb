# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
List.destroy_all
puts "Removed seeds"

10.times do
  movie = Movie.create!(
    rating: rand(1..10),
    title: Faker::Book.title,
    overview: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    poster_url: Faker::Fillmurray.image(grayscale: false, width: rand(200..600), height: rand(200..600))
  )
  puts 'generating baloney'
end

3.times do
  list = List.create!(
    name: Faker::Book.genre
  )
end
