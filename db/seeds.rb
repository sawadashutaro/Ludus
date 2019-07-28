# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Title.create(game:"Title1")
Title.create(game:"Title2")
Room.create(tournament_id:1)
Member.create(room_id:1, user_id:1, tournament_id:1)
Room.create(tournament_id:1, is_opened:"true")
user = User.new(name:"Takashi", email:"takashi@gmail.com", password:"takashi")
user.save!
user = User.new(name:"Kirito", email:"kirito@gmail.com", password:"kirito")
user.save!