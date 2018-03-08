# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative 'seeds/easter_keyword'
require_relative 'seeds/easter_christian_keyword'
require_relative 'seeds/christmas_keyword'


@songs = []


def create_song_list
  @easter_christian_songs[:songscrape].each do |song|

    @songs << song
  end

  @easter_songs[:songscrape].each do |song|
    @songs << song
  end

  @christmas_songs[:songscrape].each do |song|
    @songs << song
  end
end

"creating the song list"
create_song_list



@songs.each do |song|
  puts "creating a #{song[:title]}"
  scraped_song = {
      title: song[:title],
      artist: song[:artist],
      notation: song[:notation],
      url: song[:url],
      sku: song[:sku].to_i,
      keyword: "christmas"
  }
  song = Song.create(scraped_song)
  puts "#{song.errors.messages}"
end

dupl = {
    title:"Jesus, What A Wonderful Child",
    "url":"https://www.sheetmusicdirect.us/sheetmusic/song/1000209539/jesus-what-a-wonderful-child",
    sku: 1000209539,
    artist:"Rollo Dilworth",
    notation: "Choral Octavo"
}