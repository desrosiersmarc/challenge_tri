# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "League and format are already create by migration"
puts "Destroy all"

User.all.destroy_all
puts "users"

Member.all.destroy_all
puts "members"

Club.destroy_all
puts "clubs"

puts 'Create users'
  10.times do
    User.create(email: Faker::Internet.email,
                firstname: Faker::Name.first_name ,
                lastname: Faker::Name.last_name ,
                league_id: rand(1..17),
                password: '123soleil')
    print '*'
  end
  puts''

puts 'Create clubs'
  50.times do
    Club.create(name: Faker::Movies::StarWars.planet,
                postal_code: rand(10000..99000),
                league_id: rand(1..17))
    print '+'
  end
  puts''

puts 'Create members'
  50.times do
    Member.create(firstname: Faker::Name.first_name,
                  lastname: Faker::Name.last_name,
                  licence_number: Faker::Alphanumeric.alphanumeric(number: 10),
                  category: ['Junior', 'Sénior', 'V1', 'V2', 'V3'].sample,
                  sex: ['Homme', 'Femme'].sample,
                  club_id: Club.all.sample.id)
    print ':'
  end
  puts ''

puts 'Create contest'
  25.times do
    Contest.create(name: Faker::Superhero.name,
                   location: Faker::Address.city,
                   date: Time.now+rand(1..100).day,
                   user_id: User.all.sample.id,
                   league_id: League.all.sample.id)
    print '^'
  end
  puts ''
