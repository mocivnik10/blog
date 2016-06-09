# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = "dejan@gmail.com"
user.password = "dejan123"
user.nickname = "Dejan D"
user.is_admin = true
user.save

Avatar.create(filename: 'baskett.jpg')
Avatar.create(filename: 'neymar.jpg')
Avatar.create(filename: 'seattle.jpg')
Avatar.create(filename: 'street.jpg')
Avatar.create(filename: 'fire_ball.jpg')
Avatar.create(filename: 'kos.jpg')
Avatar.create(filename: 'chuck_norris.jpg')
Avatar.create(filename: 'snowboard.jpg')
Avatar.create(filename: 'baseball_eye.jpg')
Avatar.create(filename: 'michael_jordan.jpg')
Avatar.create(filename: 'f1.jpg')
Avatar.create(filename: 'boxing.jpg')
Avatar.create(filename: 'football_1.jpg')
Avatar.create(filename: 'surfing.jpg')
#Avatar.create(filename: 'tony.jpg')
