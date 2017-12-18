# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative 'christmas_keyword'

@songs[:songscrape].each do |song|
  scraped_song = {
      title: song[:title],
      artist: song[:artist],
      notation: song[:notation],
      url: song[:url],
      sku: song[:sku].to_i,
      keyword: "christmas"
  }
  Song.create(scraped_song)
end