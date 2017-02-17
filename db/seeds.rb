# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create(name: "The Has-Beens")
Band.create(name: "The Young and the Angries")

Album.create(name: "Dreams of FDR", band_id: 1)
Album.create(name: "Clobber the Masses", band_id: 2)

Track.create(name: "fireside chat", album_id: 1)
Track.create(name: "wheeling blues", album_id: 1)
Track.create(name: "amok! amok!", album_id: 2)
Track.create(name: "goose goes willy nilly", album_id: 2)

a = Band.find(1)
b = Band.find(2)

c = Album.find(1)
d = Album.find(2)

e = Track.find(1)
f = Track.find(2)
g = Track.find(3)
h = Track.find(4)
