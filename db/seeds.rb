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
require_relative 'seeds/christian_orchestration_keyword'
require_relative 'seeds/piano_vocal_guitar_keyword'
require_relative 'seeds/piano_vocal_guitar_keyword_2'
require_relative 'seeds/leadsheet_fakebook_keyword'
require_relative 'seeds/piano_solo_keyword'
require_relative 'seeds/guitar_chords_keyword'
require_relative 'seeds/choral_octavo_keyword'


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

  @christian_orchestration_songs[:songscrape].each do |song|
    @songs << song
  end

  @piano_vocal_guitar_songs[:songscrape].each do |song|
    @songs << song
  end

  @piano_vocal_guitar_songs_2[:songscrape].each do |song|
    @songs << song
  end

  @leadsheet_fakebook_songs[:songscrape].each do |song|
    @songs << song
  end

  @guitar_chords_songs[:songscrape].each do |song|
    @songs << song
  end

  @piano_solo_songs[:songscrape].each do |song|
    @songs << song
  end
end

"creating the song list"
create_song_list

# @seen_songs = []
# @songs.each do |song|
#   @seen_songs << song[:sku]
# end
#
# def check_sku(sku)
#   if @seen_songs.include?(sku)
# end

@songs.each do |song|
  puts "creating a #{song[:title]}"
  # if check_sku(song[:sku])

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


  # else
  #   puts "song was in the database before"
  # end
end

