# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "user+1@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+2@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+3@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+4@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+5@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+6@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")

puts "6 sporty people created"

ClubUser.create!(email: "club+1@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
ClubUser.create!(email: "club+2@test.com", password: "123456", password_confirmation: "123456", first_name: "Bill", last_name: "Jones")
ClubUser.create!(email: "club+3@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
ClubUser.create!(email: "club+4@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
ClubUser.create!(email: "club+5@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
ClubUser.create!(email: "club+6@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")

puts "6 clubs created"

Club.create!(club_name: "Harpenden Cricket Club", sport: "Cricket", main_image: "http://placehold.it/350x200", address: "1 High Road, Harpenden", club_user_id: ClubUser.first.id)
Club.create!(club_name: "Tring Rugby Club", sport: "Rugby", main_image: "http://placehold.it/350x200", address: "1 High Road, Tring", club_user_id: ClubUser.second.id)
Club.create!(club_name: "Hankley Common", sport: "Golf", main_image: "http://placehold.it/350x200", address: "1 High Road, Tilford", club_user_id: ClubUser.third.id)
Club.create!(club_name: "Redbourn FC", sport: "Football", main_image: "http://placehold.it/350x200", address: "1 High Road, Redbourn", club_user_id: ClubUser.fourth.id)
Club.create!(club_name: "UCS Rugby Club", sport: "Rugby", main_image: "http://placehold.it/350x200", address: "1 High Road, West Hampstead", club_user_id: ClubUser.fifth.id)
Club.create!(club_name: "Brocket Hall Golf Club", sport: "Golf", main_image: "http://placehold.it/350x200", address: "1 High Road, Welwyn", club_user_id: ClubUser.last.id)

puts "6 clubs created"
