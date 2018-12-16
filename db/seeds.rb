# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.create!(club_name: "Harpenden Cricket Club", sport: "Cricket", main_image: "http://placehold.it/350x200", address: "1 High Road, Harpenden")
Club.create!(club_name: "Tring Rugby Club", sport: "Rugby", main_image: "http://placehold.it/350x200", address: "1 High Road, Tring")
Club.create!(club_name: "Hankley Common", sport: "Golf", main_image: "http://placehold.it/350x200", address: "1 High Road, Tilford")
Club.create!(club_name: "Redbourn FC", sport: "Football", main_image: "http://placehold.it/350x200", address: "1 High Road, Redbourn")
Club.create!(club_name: "UCS Rugby Club", sport: "Rugby", main_image: "http://placehold.it/350x200", address: "1 High Road, West Hampstead")
Club.create!(club_name: "Brocket Hall Golf Club", sport: "Golf", main_image: "http://placehold.it/350x200", address: "1 High Road, Welwyn")

puts "6 clubs created"
