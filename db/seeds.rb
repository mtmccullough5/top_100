# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = ["Rock", "Alternative", "Country", "Pop", "Electronic", "Blues"]
100.times do
  Song.create(
    title: Faker::Book.unique.title
    artist: Faker::RockBand.name
    rank: [1..100].sample,
    genre: genres.sample
  )
end

puts "data has been seeded"