# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email:"juan@juan.com",username:"Juan",password:"123456")
Song.create(artist_name:"Katy Perry", song_name:"Firework", path:"/static/media/firework-katy_perry.80a827eb.lrc")
Song.create(artist_name:"3 Doors Down", song_name:"Here without you", path:"/static/media/here_without_you-3_doors_down.1d4e92e2.lrc")
Song.create(artist_name:"Backstreet Boys", song_name:"I want it that way", path:"/static/media/i_want_it_that_way-backstreet_boys.e4aac2c8.lrc")
Song.create(artist_name:"Miley Cyrus", song_name:"Wrecking ball", path:"/static/media/wrecking_ball-miley_cyrus.f0dafe46.lrc")
