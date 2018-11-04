# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email:"juan@juan.com",username:"Juan",password:"test")
Song.create(artist_name:"Katy Perry", song_name:"Fireworks", path:"/static/media/firework-katy_perry.80a827eb.lrc")
Song.create(artist_name:"3 Doors Down", song_name:"Here without you", path:"/static/media/3_doors_down-here_without_you.1d4e92e2.lrc")
