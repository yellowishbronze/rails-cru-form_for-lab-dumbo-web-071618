# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rap = Genre.create(name: "rap")
kanye = Artist.create(name: "kanye")
golddigger = Song.create(name: "Gold Digger", genre_id: rap.id, artist_id: kanye.id )
